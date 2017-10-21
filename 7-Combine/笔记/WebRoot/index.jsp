<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String index_path = request.getContextPath();
	String index_basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+index_path+"/";
	
	String mode = request.getParameter("mode");
	String treemode = request.getParameter("treemode");
	String catalogmode = request.getParameter("catalogmode");
	
	session.setAttribute("treemode",treemode);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=index_basePath%>">
    <title>专业笔记</title>
    <link rel="shortcut icon" href="/favicon.ico"/>
	<link rel="bookmark" href="/favicon.ico"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
<body>
	<div id="treelist"  style=" float:left ; width:260px ;  height:100%; border:0px;">
		<iframe name="tree" id="tree" src="views/parts/Tree.jsp" style="border:0; display:block; height:100%; width:100%; border-radius:5px; box-shadow:0 0 5px #CCCCCC; padding-left:10px;" frameborder="0"></iframe>
	</div>
	<div id="EditorDetail"  style="margin-left:280px;height:100%; border:0px;">
		<iframe name="editor" id="editor" src="views/parts/Editor.jsp" style="border:0; display:block; height:100%; width:100%; border-radius:5px; box-shadow:0 0 5px #CCCCCC; padding:0px;" frameborder="0"></iframe>
	</div>
	<div id="DisplayDetail"  style="margin-left:280px;height:100%; border:0px;">
		<iframe name="display" id="display" src="views/parts/Display.jsp" style="border:0; display:block; height:100%; width:100%; border-radius:5px; box-shadow:0 0 5px #CCCCCC; padding:0px;" frameborder="0"></iframe>
	</div>
</body>

<script type="text/javascript">
	var mode = "<%=mode%>";
	var catalogmode = "<%=catalogmode%>";
	
	//控制界面模块显示。
	if(mode=="display"){
		document.getElementById("DisplayDetail").style.display="";
		document.getElementById("EditorDetail").style.display="none";
	}else{
		document.getElementById("DisplayDetail").style.display="none";
		document.getElementById("EditorDetail").style.display="";
	}
	
	//页面模块的初始化。
	function initdata(data){
		if(mode=="display"){
		document.getElementById('display').contentWindow.initdata(data);
		document.getElementById('display').contentWindow.changemode(catalogmode);}
		else
		document.getElementById('editor').contentWindow.initdata(data);
	}
</script>
</html>
