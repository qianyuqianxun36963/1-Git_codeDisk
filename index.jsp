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
	<div id="choise" style="height: 36px; width: 36px;  position: absolute; right: 40px; top: 20px; background: url(views/image/choise/edit/36/pencil.png);" onclick="editOrDisplay()"></div>
	<div id="choise" style="height: 36px; width: 36px;  position: absolute; right: 40px; top: 70px; background: url(views/image/choise/tree/36/christmastree.png);" onclick="treeShowOrHide()"></div>
	<div id="choise" style="height: 36px; width: 36px;  position: absolute; right: 40px; top: 120px; background: url(views/image/choise/menu/36/bill.png);" onclick="catalogShowOrHide()"></div>

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
	var treemode = "<%=treemode%>";
	
	choiseMode();
	choiseTreeMode();
	choiseCatalogMode();
	
	function initdata(path){
		//从性能上考虑，只做其一就可以了，但是右侧状态选择的时候，只能页面调整，缺少后续动作导致问题，故这里现放开了。
		//if(mode=="display")
			document.getElementById('display').contentWindow.initdata(path);
		//else
			document.getElementById('editor').contentWindow.initdata(path);
		specialPathDeal(path);
	}

	function specialPathDeal(path){
		debugger;
		var infoOnline=new RegExp("在线资料.html");
		if(infoOnline.test(path)){
			treemode="none";
			catalogmode = "none";
			choiseTreeMode();
			choiseCatalogMode();
		}
	}

	function editOrDisplay(){
		if(mode=="display"){mode="edit"}else{mode="display"}
		choiseMode();
	}

	function treeShowOrHide(){
		if(treemode=="display"){treemode="none"}else{treemode="display"}
		choiseTreeMode();
	}

	function catalogShowOrHide(){
		if(catalogmode=="display"){catalogmode="none"}else{catalogmode="display"}
		choiseCatalogMode();
	}


	function choiseMode(){
		//是编辑还是展示。控制界面模块显示。
		if(mode==null||mode=="null"){mode="display";}
		if(mode=="display"){
			document.getElementById("EditorDetail").style.display="none";
			document.getElementById("DisplayDetail").style.display="";
		}else{
			document.getElementById("DisplayDetail").style.display="none";
			document.getElementById("EditorDetail").style.display="";
		}
	}

	function choiseTreeMode(){
		debugger;
		//选择左侧的树区域是否显示。
		if(treemode==null||treemode=="null"){treemode="display";}
		if(treemode=="display"){
			document.getElementById("treelist").style.display="";
			document.getElementById("EditorDetail").style.marginLeft="280";
			document.getElementById("DisplayDetail").style.marginLeft="280";
		}else{
			document.getElementById("treelist").style.display="none";
			document.getElementById("EditorDetail").style.marginLeft="";
			document.getElementById("DisplayDetail").style.marginLeft="";
		}
	}

	function choiseCatalogMode(){
		//选择自动生产的目录结构是否显示。
		if(catalogmode==null||catalogmode=="null"){catalogmode="display";}
		//根据mode判断当前是编辑状态还是展示状态，只有展示状态时才触发。
		if(mode=="display"){
			document.getElementById('display').contentWindow.changemode(catalogmode);
		}
	}

</script>
</html>
