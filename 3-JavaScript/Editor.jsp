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
	<input type="button" onclick="test()" value="preview"/>
	<input type="button" onclick="savedata()" value="save" accesskey="s" />  
	<hr/>
	<textarea name="editor" id="editor" rows="30" cols="80"></textarea>
</form>
</body>

<script type="text/javascript">
	var paraPath = "<%=paraPath%>";
	var storePath = "<%=storePath%>";

	var state = "";

	var state_my = create_state_my();
	var state_html = {};
	var state_md = {};

	var context = new Context();
	
	if (paraPath != ""&&paraPath!=null&&paraPath!="null"){

		state = paraPath.substring(paraPath.indexOf('.')+1, paraPath.length());

		if(state == "my"){context.changeState(state_my);}
		else if(state == "html"){context.changeState(state_html);}
		else if(state == "md"){context.changeState(state_md);}
		else{context.changeState(state_my);}

		initdata();
	} 

	function initdata(path){
		context.initdata(path);
	}

	function savedata(){
		context.savedata();
	}

	function test(){
		context.test();
	}

	window.onload = function(){
		context.onWindowLoad();
	}

	window.onresize = function(){
		context.onWindowResize();
	}


    //定义一个全局变量context，他包含了状态信息，并根据状态做出不同行为。
    function Context(){
	}
	Context.prototype = {
		constructor:Context,
		currentState:null,
		changeState: function (state) {
            currentState = state;
        },
        initdata: function(path){
        	currentState.initdata(path);
        },
        savedata: function(){
        	currentState.savedata();
        },
        onWindowResize: function(){
        	currentState.onresize();
        },
        onWindowLoad: function(){
        	currentState.onload();
        },
        test: function(){
        	currentState.test();
        }
	}

    //定义了一个状态类，包含了处理'my'类型的文件的所有操作。
    function create_state_my(){
    	var obj = new Object();
    	obj.onload = function()
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
		
		//窗口改变时候，改变编辑区 
		obj.onresize = function () {
			//alert(document.body.offsetHeight-30);
			editor.resize( editor.container.getStyle( 'width' ),document.body.offsetHeight-40 );
		};
	    
	    obj.test =function test() {  
	        //JavaScript判空，如果确定 
	        debugger;
	        var editor_data = editor.getData();  
	        if(editor_data==null||editor_data==""){  
	            alert("数据为空不能提交");  
	        }else{  
	            //alert(editor_data);
	            document.myform.submit();  
	        }         
	    }  
	    
	    obj.savedata = function savedata(){
	    	var editor_data = editor.getData();  
	        if(editor_data==null||editor_data==""){  
	            alert("数据为空不能提交");  
	        }else{  
	           	var jsondata = {data:editor_data,filePath:storePath + paraPath};
	           	$.ajax({ type:"POST", data: jsondata, url: "views/function/saveTofile.jsp",success:function(){alert("数据保存成功！");}}); 
	        }
	    }
	    
	    obj.initdata = function initdata(path){
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
			
			//让编辑器窗口充满编辑模块。
			CKEDITOR.on('instanceReady', function (e) { 
				editor.resize( editor.container.getStyle( 'width' ),document.body.offsetHeight-40 );
			});

		    paraPath = path;

	    	var jsondata;
	    	//如果是初始化的时候调用的，就直接用页面变量filePath。如果是通过tree上的节点调用的，就使用传来的路径参数。
	    	if(path==null) 	jsondata = {filePath:storePath + paraPath};
	    	else {jsondata = {filePath:storePath+path};}
	    	$.ajax({ type:"GET", data: jsondata, url: "views/function/getFiledata.jsp", dataType: "json",
	    		success:function(data){
	    			debugger;
	    			editor_data = data[0].data;
	    			editor.setData(editor_data);
	    		;} 
	    	});
	    }
	    return obj;
    }

</script>
</html>
