<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String paraPath = request.getParameter("filePath");
String servPath = request.getSession().getServletContext().getRealPath("/").replace("\\", "\\\\");
String storePath = servPath + "datas/notes/";//文件的保存地址。
System.out.println("filepath:"+storePath + paraPath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="plugins/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="plugins/ckfinder/ckfinder.js"></script>
	<script type="text/javascript" src="plugins/jquery/jquery-1.4.2.min.js"></script>
	<style type="text/css">
/* 		#editorbody{ */
/* 			background: #CC22DD; */
/* 			margin: 0; */
/* 			padding: 0; */
/* 		} */
	</style>
	
  </head>
  
<body id="editorbody">
<form action="views/parts/doTest.jsp" name="myform" method="post">
	<input type="button" onclick="test()" value="页内预览"/>
	<input type="button" onclick="savedata()" value="保存数据" accesskey="s" />  
	<hr/>
	<textarea name="editor" id="editor" rows="30" cols="80"></textarea>
</form>
</body>

<script type="text/javascript">
	var paraPath = "<%=paraPath%>";
	var storePath = "<%=storePath%>";
	var pagedata;
	var pagehead;
	var pagefoot;
	
	if (paraPath != ""&&paraPath!=null&&paraPath!="null"){
		initdata();
	} 

	var editor = CKEDITOR.replace('editor',{
		language:'zh-cn',
		toolbarGroups: [
			{"name":"basicstyles","groups":["basicstyles"]},
			{"name":"links","groups":["links"]},
			{"name":"paragraph","groups":["list","blocks"]},
			{"name":"document","groups":["mode"]},
			{"name":"insert","groups":["insert"]},
			{"name":"styles","groups":["styles"]},
			{"name":"about","groups":["about"]}
		]
	});
	
	window.onload = function()
    {
		//配置ckfinder，结合在一起使用。
		CKFinder.setupCKEditor( editor, '../../plugins/ckfinder/' );	
		CKEDITOR.editorConfig = function( config ) {
		    //其他一些配置
		    filebrowserBrowseUrl = '../../plugins/ckfinder/ckfinder.html';
		    filebrowserImageBrowseUrl = '../../plugins/ckfinder/ckfinder.html?type=Images';
		    filebrowserFlashBrowseUrl = '../../plugins/ckfinder/ckfinder.html?type=Flash';
		    filebrowserUploadUrl = '../../plugins/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files';
		    filebrowserImageUploadUrl = '../../plugins/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images';
		    filebrowserFlashUploadUrl = '../../plugins/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash';
		};
    };
	
	//让编辑器窗口充满编辑模块。
	CKEDITOR.on('instanceReady', function (e) { 
		editor.resize( editor.container.getStyle( 'width' ),document.body.offsetHeight-40 );
	});
	
	//窗口改变时候，改变编辑区 
	window.onresize = function () {
		//alert(document.body.offsetHeight-30);
		editor.resize( editor.container.getStyle( 'width' ),document.body.offsetHeight-40 );
	};
    
    function savedata(){
    	debugger;
    	var editor_data = editor.getData();  
        if(editor_data==null||editor_data==""){  
            alert("数据为空不能提交");  
        }else{  
        
        	//这里增加了一个验证，如果页面是被处理过的，不带html标签等，就给他加上头尾。
        	var re     = /<\/html>/;
        	var result = re.test(editor_data);
        	if(!result){
        		editor_data = pagehead + editor_data + pagefoot;
        	}
        
           	var jsondata = {data:editor_data,filePath:storePath + paraPath};
           	$.ajax({ type:"POST", data: jsondata, url: "views/function/saveTofile.jsp",success:function(){alert("数据保存成功！");}}); 
        }        
    }
    
    function initdata(path){
    	paraPath = path;
    	var jsondata;
    	//如果是初始化的时候调用的，就直接用页面变量filePath。如果是通过tree上的节点调用的，就使用传来的路径参数。
    	if(path==null) 	jsondata = {filePath:storePath + paraPath};
    	else {jsondata = {filePath:storePath+path};}
    	$.ajax({ type:"GET", data: jsondata, url: "views/function/getFiledata.jsp", dataType: "json",
    		success:function(data){
    			debugger;
    			var editor_data = data[0].data;
    			editor.setData(editor_data);
    			
    			pagehead = editor_data.match(/([\s\S]*)<body>/)[0];
    			pagefoot = editor_data.match(/<\/body>([\s\S]*)/)[0];
				
    		;} 
    	});
    }
    
</script>
</html>
