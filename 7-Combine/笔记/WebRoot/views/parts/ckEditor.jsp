<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>     
<%@ taglib uri="http://ckfinder.com" prefix="ckfinder"%>    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="plugins/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="plugins/ckfinder/ckfinder.js"></script>
  </head>
  
<body>
<form action="doTest.jsp" name="myform" method="post">
	<textarea name="editor" id="editor1" rows="10" cols="80">This is my textarea to be replaced with CKEditor.</textarea>
<!-- 	也可以用tablib的方式将插件引入进来。 -->
<!-- 	<ckfinder:setupCKEditor editor="content" basePath="ckfinder/" />      -->
<!--    <ckeditor:editor basePath="ckeditor/" editor="content" value="CKEditor Test " />    -->
	<input type="button" onclick="test()" value="提交数据"/>  
</form>
</body>

<script type="text/javascript">

	var editor;
	
    window.onload = function()
    {
		editor = CKEDITOR.replace('editor',{language:'zh-cn'});
		
// 		CKEDITOR.on('instanceReady', function (e) {
// 			var td = document.getElementById('cke_contents_' + e.editor.name), tbody = td.parentNode.parentNode;
// 			td.style.height = h - tbody.rows[0].offsetHeight - tbody.rows[2].offsetHeight + 'px';
// 		});

		CKEDITOR.instances.content.execCommand('maximize');
		
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
    
    function test() {  
        //JavaScript判空，如果确定  
        var editor_data = editor.getData();  
        //var editor_data = CKEDITOR.instances.content.getData();  
        if(editor_data==null||editor_data==""){  
            alert("数据为空不能提交");  
        }else{  
            if(confirm(editor_data)){  
            document.myform.submit();  
            }  
        }         
    }  
</script>
</html>
