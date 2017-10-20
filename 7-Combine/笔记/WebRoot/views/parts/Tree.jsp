<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.regex.*" %>
<%@ page import="net.sf.json.JSONArray" %>

<%
	String path = request.getContextPath();
	String basePath = request.getSession().getServletContext().getRealPath("/").replace("\\", "\\\\");
	String storePath = basePath+"/datas/notes";
	String operation = request.getParameter("operation");
	System.out.println("operation: "+operation);
	String id = request.getParameter("id");
	String text = request.getParameter("text");
	String type = request.getParameter("type");
	final String treemode = (session.getAttribute("treemode")!=null)?session.getAttribute("treemode").toString():"";
	System.out.println("parameters: type is:"+type+"  id is:"+id+"  text is:"+text+" treemode:"+treemode);
	
%>

<%
	class Fs{
		protected String base = "";

		Fs(){}
		Fs(String basepath) throws Exception{
			this.base=this.real(basepath);
			if(this.base==null||this.base.isEmpty()){throw new Exception("Base directory does not exist");}
		}

		protected String real(String path) throws Exception {
			String temp = path;
			if(temp.isEmpty()) { throw new Exception("path does't exist"); }
			return temp;
		}
		
		protected String path(String id) throws Exception {
			id = id.replaceAll("\\\\","/");
  			id = this.mytrim(id, "/");
			id = this.real(this.base + "/" + id);
			return id;
		}

		//将除去根地址得到的剩下的部分。
		protected String id(String path) throws Exception {
			path = this.real(path);
			path = path.substring(this.base.length());
			path = path.replaceAll("\\\\","/");
			path = mytrim(path, "/");
			return (path.length()>0) ? path : "/";
		}
	    
	    public String mytrim(String str,String tag){
			str = str.trim();
			while(str.startsWith(tag)) str = str.substring(1);
			while(str.endsWith(tag)) str = str.substring(0,str.length()-1);
			return str;
		}
		
		public boolean deleteDirectory(String dir) {  
		    // 如果dir不以文件分隔符结尾，自动添加文件分隔符  
		    if (!dir.endsWith(File.separator))  
		        dir = dir + File.separator;  
		    File dirFile = new File(dir);  
		    // 如果dir对应的文件不存在，或者不是一个目录，则退出  
		    if ((!dirFile.exists()) || (!dirFile.isDirectory())) {  
		        System.out.println("删除目录失败：" + dir + "不存在！");  
		        return false;  
		    }  
		    boolean flag = true;  
		    // 删除文件夹中的所有文件包括子目录  
		    File[] files = dirFile.listFiles();  
		    for (int i = 0; i < files.length; i++) {  
		        // 删除子文件  
		        if (files[i].isFile()) {  
		            flag = this.deleteFile(files[i].getAbsolutePath());  
		            if (!flag)  
		                break;  
		        }  
		        // 删除子目录  
		        else if (files[i].isDirectory()) {  
		            flag = this.deleteDirectory(files[i].getAbsolutePath());  
		            if (!flag)  
		                break;  
		        }  
		    }  
		    if (!flag) {  
		        System.out.println("删除目录失败！");  
		        return false;  
		    }  
		    // 删除当前目录  
		    if (dirFile.delete()) {  
		        System.out.println("删除目录" + dir + "成功！");  
		        return true;  
		    } else {  
		        return false;  
		    }  
		}  
		
		public  boolean deleteFile(String fileName) {  
		    File file = new File(fileName);  
		    // 如果文件路径所对应的文件存在，并且是一个文件，则直接删除  
		        if (file.exists() && file.isFile()) {  
		        if (file.delete()) {  
		            System.out.println("删除单个文件" + fileName + "成功！");  
		            return true;  
		        } else {  
		            System.out.println("删除单个文件" + fileName + "失败！");  
		            return false;  
		        }  
		    } else {  
		        System.out.println("删除单个文件失败：" + fileName + "不存在！");  
		        return false;  
		    }  
		} 
		
		public ArrayList<Map<Object, Object>> lst(String id, boolean with_root) throws Exception {
			String dir = this.path(id);
			File dirs = new File(dir);
			File[] filesFile=dirs.listFiles();
			ArrayList<String> lst = new ArrayList<String>();
			for (File f : filesFile){
				String item = f.toString().substring(dirs.toString().length()+1);
				lst.add(item);
				//System.out.println("check item:"+item);
			}

			if(lst.size()==0) { throw new Exception("Could not list path:" + dir); }
			ArrayList<Map<Object, Object>> res = new ArrayList<Map<Object, Object>>();

			for(String item : lst){
				if(item.equals(".") || item.equals("..") || item == null) { continue; }
				String filepath=dir+"/"+item;
// 				System.out.println("check dir:"+filepath);
				File f = new File(filepath);
				if(f.isDirectory()){
					Map<Object, Object> resmap = new HashMap<Object, Object>();
					resmap.put("text",item);
					if(f.listFiles().length==0) resmap.put("children",false);
					else{resmap.put("children",true);}
					resmap.put("id",this.id(filepath));
					resmap.put("icon","folder"); 
					res.add(resmap);
				}else{
					String ext="";
					if(item.indexOf('.')!=-1) ext = item.substring(item.indexOf('.')+1, item.length());
// 					System.out.println(ext);//筛选出那些特定类型的文件。
					if(treemode.equals("safe")){	
						if(ext.equals("my")){
							Map<Object, Object> resmap = new HashMap<Object, Object>();resmap.put("text",item);resmap.put("children",false);resmap.put("id",this.id(filepath));resmap.put("type","file");resmap.put("icon","file file-"+"mp4"); res.add(resmap);
						}
					}else if(treemode.equals("all")){	
						Map<Object, Object> resmap = new HashMap<Object, Object>();resmap.put("text",item);resmap.put("children",false);resmap.put("id",this.id(filepath));resmap.put("type","file");resmap.put("icon","file file-"+"mp4"); res.add(resmap);
					}else{
						if(ext.equals("my")||ext.equals("txt")||ext.equals("html")||ext.equals("")){
							Map<Object, Object> resmap = new HashMap<Object, Object>();resmap.put("text",item);resmap.put("children",false);resmap.put("id",this.id(filepath));resmap.put("type","file");resmap.put("icon","file file-"+"mp4"); res.add(resmap);
						}
					}
				}
			}
			return res;
		}
		
		public ArrayList<Map<Object, Object>> create(String id, String name, boolean mkdir) throws Exception{
			String dir = this.path(id);
			if(name.length()==0)
			{
				throw new Exception("Invalid name: " + name);
			}
			if(mkdir){File file = new File(dir+'/'+name);file.mkdir();System.out.println("create dir:"+dir+'/'+name);}
			else{File file = new File(dir+'/'+name);file.createNewFile();System.out.println("create file:"+dir+'/'+name);}
			ArrayList<Map<Object, Object>> res = new ArrayList<Map<Object, Object>>();
			Map<Object, Object> resmap = new HashMap<Object, Object>();resmap.put("id",this.id(dir+"/"+name));
			res.add(resmap);
			return res;
		}

		public ArrayList<Map<Object, Object>> delete(String id) throws Exception{
			String path = this.path(id);
			if(new File(path).isDirectory()){deleteDirectory(path);System.out.println("delete dir:"+path);}
			else{File file = new File(path);file.delete();System.out.println("delete file:"+path);}
			ArrayList<Map<Object, Object>> res = new ArrayList<Map<Object, Object>>();
			Map<Object, Object> resmap = new HashMap<Object, Object>();resmap.put("id",this.id(path));
			res.add(resmap);
			return res;
		}

		public ArrayList<Map<Object, Object>> rename(String id, String name) throws Exception{
			String path = this.path(id);
			if(name.length()==0)
			{
				throw new Exception("Invalid name: " + name);
			}
			if(path.equals(this.base)) {
				throw new Exception("Cannot rename root");
			}
			String filePath=path.replaceAll("\\\\","/");
		    String dirpath = filePath.substring(0, filePath.lastIndexOf("/"));
		    File oldfile = new File(path);
			File newfile = new File(dirpath+"/"+name);
			if(!oldfile.exists()){System.out.println("this oldname does't exist.");}
			else if(newfile.exists()){System.out.println("this newname has bean used.");}
			else{
				oldfile.renameTo(newfile);
				System.out.println("name change success");
			}
			ArrayList<Map<Object, Object>> res = new ArrayList<Map<Object, Object>>();
			Map<Object, Object> resmap = new HashMap<Object, Object>();
			resmap.put("id",this.id(dirpath+"/"+name));
			res.add(resmap);
			return res;
		}
	}
%>


<%
	if(operation!=null){
	    Fs fs = new Fs(storePath);
		try {
			ArrayList<Map<Object, Object>> rslt = null;
			String node = "";
			if(operation.equals("get_node")){
				node = (id!=null && !id.equals("#")) ? id : "/";
				rslt = fs.lst(node, (id!=null && !id.equals("#")));
			}else if(operation.equals("get_content")){
				node = (id!=null && !id.equals("#")) ? id : "/";
			}else if(operation.equals("create_node")){
				node = (id!=null && !id.equals("#")) ? id : "/";
				rslt = fs.create(node, text!=null ? text : "", type==null || !type.equals("file"));
			}else if(operation.equals("delete_node")){
				node = (id!=null && !id.equals("#")) ? id : "/";
				rslt = fs.delete(node);
			}else if(operation.equals("rename_node")){
				node = (id!=null && !id.equals("#")) ? id : "/";
				rslt = fs.rename(node, text!=null ? text : "");
			}
			JSONArray json = JSONArray.fromObject(rslt);
	 		response.setCharacterEncoding("utf-8");
	 		response.setContentType("application/json; charset=utf-8");
	 		response.getWriter().write(json.toString());
			response.getWriter().flush();
        	response.getWriter().close();
		}
		catch (Exception e) {
		}
	}	
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>filetree</title>
		<meta name="viewport" content="width=device-width" />
		<link rel="stylesheet" href="../../plugins/jstree/dist/themes/default/style.min.css" />
		<link rel="stylesheet" href="../css/theme.css"/>
		<style>
		html, body { background:#ebebeb; font-size:10px; font-family:Verdana; margin:0; padding:0; display:block; height:100%; width:100%;}
		#container { min-width:220px; margin:0px auto 0 auto; background:transparent; border-radius:0px; padding:0px; overflow:hidden; }
		#tree { float:left; min-width:259px; border-right:1px solid silver; overflow:auto; padding:0px 0; }
		#data { margin-left:320px; }
		#data textarea { margin:0; padding:0; height:100%; width:100%; border:0; background:white; display:block; line-height:18px; resize:none; }
		#data, #code { font: normal normal normal 12px/18px 'Consolas', monospace !important; }
		#tree .folder { background:url('./file_sprite.png') right bottom no-repeat; }
		#tree .file { background:url('./file_sprite.png') 0 0 no-repeat; }
		#tree .file-pdf { background-position: -32px 0 }
		#tree .file-as { background-position: -36px 0 }
		#tree .file-c { background-position: -72px -0px }
		#tree .file-iso { background-position: -108px -0px }
		#tree .file-htm, #tree .file-html, #tree .file-xml, #tree .file-xsl { background-position: -126px -0px }
		#tree .file-cf { background-position: -162px -0px }
		#tree .file-cpp { background-position: -216px -0px }
		#tree .file-cs { background-position: -236px -0px }
		#tree .file-sql { background-position: -272px -0px }
		#tree .file-xls, #tree .file-xlsx { background-position: -362px -0px }
		#tree .file-h { background-position: -488px -0px }
		#tree .file-crt, #tree .file-pem, #tree .file-cer { background-position: -452px -18px }
		#tree .file-php { background-position: -108px -18px }
		#tree .file-jpg, #tree .file-jpeg, #tree .file-png, #tree .file-gif, #tree .file-bmp { background-position: -126px -18px }
		#tree .file-ppt, #tree .file-pptx { background-position: -144px -18px }
		#tree .file-rb { background-position: -180px -18px }
		#tree .file-text, #tree .file-txt, #tree .file-md, #tree .file-log, #tree .file-htaccess { background-position: -254px -18px }
		#tree .file-doc, #tree .file-docx { background-position: -362px -18px }
		#tree .file-zip, #tree .file-gz, #tree .file-tar, #tree .file-rar { background-position: -416px -18px }
		#tree .file-js { background-position: -434px -18px }
		#tree .file-css { background-position: -144px -0px }
		#tree .file-fla { background-position: -398px -0px }
		</style>
	</head>
	
	<body id="treebody">
		<a id="link" href="http://www.baidu.com/" target="content"></a>
	
		<div id="path" style="border:1px solid; border-radius:25px; padding:5px"></div>
	
		<div id="container" role="main">
			<div id="tree"></div>
		</div>

		<!-- 虽然不知道为什么，但这里不要用jquery.min.js一直报错！！ -->
		<script src="../../plugins/jstree/dist/jquery.js"></script>
		<script src="../../plugins/jstree/dist/jstree.min.js"></script>
		<script>
		$(function () {
			$(window).resize(function () {
				var h = Math.max($(window).height() - 0, 420);
				$('#container, #data, #tree, #data .content').height(h).filter('.default').css('lineHeight', h + 'px');
			}).resize();
		
	
			$('#tree')
				.jstree({
					'core' : {
						'data' : {
							'url' : '?operation=get_node',
							'data' : function (node) {
								return { 'id' : node.id };
							}
						},
						'check_callback' : function(o, n, p, i, m) {
							if(m && m.dnd && m.pos !== 'i') { return false; }
							if(o === "move_node" || o === "copy_node") {
								if(this.get_node(n).parent === this.get_node(p).id) { return false; }
							}
							return true;
						},
						'force_text' : true,
						'themes' : {
							'responsive' : false,
							'variant' : 'small',
							'stripes' : true
						}
					},
					'sort' : function(a, b) {
						return this.get_type(a) === this.get_type(b) ? (this.get_text(a) > this.get_text(b) ? 1 : -1) : (this.get_type(a) >= this.get_type(b) ? 1 : -1);
					},
					'contextmenu' : {
						'items' : function(node) {
							var tmp = $.jstree.defaults.contextmenu.items();
							delete tmp.create.action;
							tmp.create.label = "New";
							tmp.create.submenu = {
								"create_folder" : {
									"separator_after"	: true,
									"label"				: "Folder",
									"action"			: function (data) {
										var inst = $.jstree.reference(data.reference),
											obj = inst.get_node(data.reference);
										inst.create_node(obj, { type : "default" }, "last", function (new_node) {
											setTimeout(function () { inst.edit(new_node); },0);
										});
									}
								},
								"create_file" : {
									"label"				: "File",
									"action"			: function (data) {
										var inst = $.jstree.reference(data.reference),
											obj = inst.get_node(data.reference);
										inst.create_node(obj, { type : "file" }, "last", function (new_node) {
											setTimeout(function () { inst.edit(new_node); },0);
										});
									}
								}
							};
							if(this.get_type(node) === "file") {
								delete tmp.create;
							}
							return tmp;
						}
					},
					'types' : {
						'default' : { 'icon' : 'folder' },
						'file' : { 'valid_children' : [], 'icon' : 'file' }
					},
					'unique' : {
						'duplicate' : function (name, counter) {
							return name + ' ' + counter;
						}
					},
					'plugins' : ['state','dnd','sort','types','contextmenu','unique']
				})
				.on('delete_node.jstree', function (e, data) {
					$.get('?operation=delete_node', { 'id' : data.node.id })
						.fail(function () {
							data.instance.refresh();
						});
				})
				.on('create_node.jstree', function (e, data) {
					$.get('?operation=create_node', { 'type' : data.node.type, 'id' : data.node.parent, 'text' : data.node.text })
						.done(function (d) {
							data.instance.set_id(data.node, d[0].id);
						})
						.fail(function () {
							data.instance.refresh();
						});
				})
				.on('rename_node.jstree', function (e, data) {
					$.get('?operation=rename_node', { 'id' : data.node.id, 'text' : data.text })
						.done(function (d) {
							debugger;
							data.instance.set_id(data.node, d[0].id);
						})
						.fail(function () {
							data.instance.refresh();
						});
				})
				.on('move_node.jstree', function (e, data) {
					$.get('?operation=move_node', { 'id' : data.node.id, 'parent' : data.parent })
						.done(function (d) {
							data.instance.load_node(data.parent);
							data.instance.refresh();
						})
						.fail(function () {
							data.instance.refresh();
						});
				})
				.on('copy_node.jstree', function (e, data) {
					$.get('?operation=copy_node', { 'id' : data.original.id, 'parent' : data.parent })
						.done(function (d) {
							data.instance.load_node(data.parent);
							data.instance.refresh();
						})
						.fail(function () {
							data.instance.refresh();
						});
				})
				.on('changed.jstree', function (e, data) {
					if(data && data.selected && data.selected.length) {
// 						$.get('?operation=get_content&id=' + data.selected.join(':'), function (d) {});

// 						下面这种方式，会激发链接，然后去调用Editor.jsp页面。全页面刷新，效率很低。
// 						document.getElementById("link").href="Editor.jsp?filePath="+data.selected.join(':');
// 						document.getElementById("link").click();

// 						下面这种方法是直接通过调用Editor.jsp页面的js方法来实现初始化的，局部刷新，效率高。
						if(data.selected!=null)
						{
							document.getElementById("path").innerHTML="http://localhost:8080/NoteBook/<\/br>datas/notes/"+data.selected;
							//window.parent.document.getElementById('content').contentWindow.initdata(data.selected);
							window.parent.initdata(data.selected);
						}
					}
					else {
// 						$('#data .content').hide();
// 						$('#data .default').html('Select a file from the tree.').show();
					}
				});
		});
		</script>
	</body>
</html>