<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String mode = request.getParameter("mode");
String paraPath = request.getParameter("filePath");
String servPath = request.getSession().getServletContext().getRealPath("/").replace("\\", "\\\\");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>displayPage</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<link type="text/css" href="plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="plugins/bootstrap/bootstrap-theme.min.css" rel="stylesheet">
	<script type="text/javascript" src="plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="plugins/bootstrap/bootstrap.min.js"></script>
	<script type="text/javascript" src="views/js/online.js"></script>
	<script type="text/javascript" src="views/js/common.js"></script>
  </head>
  
<body style="margin:0px;">

<form action="views/parts/doTest.jsp" name="myform" method="post" style="margin:0px">
	
	<!-- 目录区域 -->
	<div id="CatalogDetail"  style=" float:left ; width:220px ;  height:100%; border:0px;">
		<iframe name="catalog" id="catalog" src="views/parts/Catalog.jsp" style="border:0; display:block; height:100%; width:100%; border-radius:5px; box-shadow:0 0 5px #CCCCCC; padding-left:10px;" frameborder="0"></iframe>
	</div>
	
	<!-- 分割线 -->
	<div id="Split" style="height: 32px; width: 32px; background: url(views/image/splits/32/reddit.png) ; position: absolute; left: 225px; top: 0px;" onmousedown="MoveDiv(this,event)"></div>
	
	<!-- 正文显示区域 -->
	<div id="ContentDetail"  style="margin-left:240px;height:100%; border:0px;">
		<iframe name="content" id="content" src="views/parts/Content.html" style="border:0; display:block; height:100%; width:100%; border-radius:5px; box-shadow:0 0 5px #CCCCCC; padding:0px;"></iframe>
	</div>

</form>

</body>

<script type="text/javascript">
	var mode = "<%=mode%>";
	var paraPath = "<%=paraPath%>";
    var storePath = "<%=servPath%>" + getProperty("notePath");
    var urlPath = getRootPath() + getProperty("notePath");

	if (mode != ""&&mode!=null&&mode!="null"){
		changemode(mode);
	} 
	
	if (paraPath != ""&&paraPath!=null&&paraPath!="null"){
		initdata(paraPath);
	} 

    function initdata(path){
    	paraPath = path;
    	var state = path[0].substring(path[0].indexOf('.')+1, path[0].length);
    	changeState(state);

        var displayContext = new DisplayContext();
        displayContext.change(currentState);
        displayContext.initdata();
    }

    //状态切换函数，用于切换页面变量'currentState',页面上的状态判断都是以此为基础。
    function changeState(state){
        switch(state){
            case "my": currentState = myState;  break;
            case "md": currentState = mdState;  break;
            case "html": currentState = htmlState;  break;
            default: currentState = myState;
        }
    }

    function changemode(mode){
        debugger;
    	if(mode=="display"){
            initSplit();
			document.getElementById("CatalogDetail").style.display="";
            document.getElementById("Split").style.display="";
			document.getElementById("ContentDetail").style.marginLeft="240px";
		}else{
			document.getElementById("CatalogDetail").style.display="none";
            document.getElementById("Split").style.display="none";
			document.getElementById("ContentDetail").style.marginLeft="0px";
		}
    }
    
  	//开始滚动
	ScrollDiv('Split');

    //  ******* ---- 下面是状态模式相关的代码 ---- ****************//

    //几个编辑状态的实例
    var myState = new MyState();
    var htmlState = new HtmlState();
    var mdState = new MarkdownState();

    //全局变量，用来保存编辑区域和当前编辑状态
    var currentState = myState;

    //定义一个全局变量context，他包含了状态信息，并根据状态做出不同行为。
    function DisplayContext(){    }
    DisplayContext.prototype = {
        constructor:DisplayContext,
        currentState:null,
        change: function (state) {
            currentState = state;
        },
        initdata: function () {
        	var jsondata = {filePath:storePath+paraPath};
	        $.ajax({ type:"GET", data: jsondata, url: "views/function/getFiledata.jsp", dataType: "json",
	            success:function(data){
	            	currentState.initdata(data);
	            ;} 
	        });
            
        },
    }


	//定义了一个状态类，包含了处理'my'类型的文件的所有操作。
    function HtmlState() { }
    
    HtmlState.prototype.initdata = function initdata(data){

    	document.getElementById('content').contentWindow.init(data[0].data,paraPath);
    	
    	var Catalogdata = document.getElementById('content').contentWindow.getCatalogdata();
    	document.getElementById('catalog').contentWindow.init(Catalogdata);
    	
    	initSplit();
    }

    //定义了一个状态类，包含了处理'my'类型的文件的所有操作。
    function MarkdownState() { }
    
    MarkdownState.prototype.initdata = function initdata(data){
    	document.getElementById('content').contentWindow.init(data[0].data,paraPath);
    	
    	var Catalogdata = document.getElementById('content').contentWindow.getCatalogdata();
    	document.getElementById('catalog').contentWindow.init(Catalogdata);

        initSplit();
    }

    //定义了一个状态类，包含了处理'my'类型的文件的所有操作。
    function MyState() { }
    
    MyState.prototype.initdata = function initdata(data){
    	document.getElementById('content').contentWindow.init(data[0].data,paraPath);
    	
    	var Catalogdata = document.getElementById('content').contentWindow.getCatalogdata();
    	document.getElementById('catalog').contentWindow.init(Catalogdata);

    	initSplit();
    }

    function initSplit(){
        //初始化分割线游标位置
        document.getElementById("Split").style.left="226px";
        document.getElementById("CatalogDetail").style.width="220px";
    }

</script>
</html>
