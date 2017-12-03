<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	
	<style>
		.defaultrightframe   {margin-left:430px;height:100%;min-height:800px; border:0px;}
		.defaultleftframe    {float:left ; width:420px ;  height:100%;min-height:800px; min-height:800px;  border:0px;}
		.defaultleftarea     {float:left ; width:200px ;  height:100%;min-height:800px; border:0px;padding-left:10px;}
		.defaultleftareatail {margin-left:0px}
		.defaultrightarea    {}
		.iframearea          {border:0; display:block; width:100%; height:100%;min-height:800px; border-radius:5px; box-shadow:0 0 5px #CCCCCC; padding:0px;}
	</style>
	
  </head>
  
  <body>
  
    <div id="FunctionArea" class="defaultleftframe" style="min-height:500px;">
		<div class="defaultleftarea">      
			<iframe class="iframearea" src="Modules/BizModule/treearea/views/treePages/functionTree.html" name="Area" id="Area"  frameborder="0"></iframe>
		</div>
		<div class="defaultleftarea defaultleftareatail">
			<iframe class="iframearea" src="Modules/BizModule/treearea/views/treePages/commonTree.html" name="Tree" id="Tree" frameborder="0"></iframe>
		</div>
	</div>
	
	<div class="defaultrightframe">
		<div class="defaultrightarea">
			<iframe class="iframearea" src="Modules/BizModule/treearea/views/detailPages/detailPartment.jsp" name="Detail" id="Detail" frameborder="0" style="padding:0px;"></iframe>
		</div>
	</div>
	
  </body>
</html>
