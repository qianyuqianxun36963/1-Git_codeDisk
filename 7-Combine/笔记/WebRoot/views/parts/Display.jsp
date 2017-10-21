<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String mode = request.getParameter("mode");
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
	<script type="text/javascript" src="plugins/jquery/jquery-1.4.2.min.js"></script>
	<script src="views/js/online.js"></script>
  </head>
  
<body style="margin:0px;">
<form action="views/parts/doTest.jsp" name="myform" method="post" style="margin:0px">
	<div id="CatalogDetail"  style=" float:left ; width:220px ;  height:100%; border:0px;">
		<iframe name="catalog" id="catalog" src="views/parts/Catalog.jsp" style="border:0; display:block; height:100%; width:100%; border-radius:5px; box-shadow:0 0 5px #CCCCCC; padding-left:10px;" frameborder="0"></iframe>
	</div>
	
	<div id="Split" style="height: 32px; width: 32px; background: url(views/image/splits/32/reddit.png) ; position: absolute; left: 225px; top: 0px;" onmousedown="MoveDiv(this,event)"></div>
	
	<div id="ContentDetail"  style="margin-left:240px;height:100%; border:0px;">
		<iframe name="content" id="content" src="views/parts/Content.html" style="border:0; display:block; height:100%; width:100%; border-radius:5px; box-shadow:0 0 5px #CCCCCC; padding:0px;"></iframe>
	</div>
</form>
</body>

<script type="text/javascript">
	var mode = "<%=mode%>";
	var paraPath = "<%=paraPath%>";
	var storePath = "<%=storePath%>";
	
	if (paraPath != ""&&paraPath!=null&&paraPath!="null"){
		initdata();
	} 
	
	if (mode != ""&&mode!=null&&mode!="null"){
		changemode(mode);
	} 
	
    function initdata(path){
    	var jsondata;
    	//如果是初始化的时候调用的，就直接用页面变量'paraPath'。如果是通过tree上的节点调用的，就使用传来的路径参数'path'。
    	if(path==null) 	jsondata = {filePath:storePath+paraPath};
    	else {jsondata = {filePath:storePath+path};}
    	$.ajax({ type:"GET", data: jsondata,async:false, url: "views/function/getFiledata.jsp", dataType: "json",
    		success:function(data){
      			document.getElementById('content').contentWindow.init(data[0].data);
    		;} 
    	});
    	
    	var Catalogdata = document.getElementById('content').contentWindow.getCatalogdata();
    	document.getElementById('catalog').contentWindow.init(Catalogdata);
    	
    	//初始化分割线游标位置
    	document.getElementById("Split").style.left="226px";
    	document.getElementById("CatalogDetail").style.width="220px";
    }
    
    function changemode(mode){
    	if(mode=="display"){
			document.getElementById("CatalogDetail").style.display="";
			document.getElementById("ContentDetail").style.marginLeft="240px";
		}else{
			document.getElementById("CatalogDetail").style.display="none";
			document.getElementById("ContentDetail").style.marginLeft="0px";
		}
    }
    
  	//开始滚动
	ScrollDiv('Split');
</script>
</html>
