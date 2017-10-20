<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Catalog</title>
		<meta name="viewport" content="width=device-width" />
		<link rel="stylesheet" href="../../plugins/jstree/dist/themes/default/style.min.css" />
		<link rel="stylesheet" href="../css/theme.css"/>
		<style>
			html, body { background:#ebebeb; font-size:10px; font-family:Verdana; margin:0; padding:0; display:block; height:100%; width:100%;}
			#container { min-width:220px; margin:0px auto 0 auto; background:transparent; border-radius:0px; padding:0px; overflow:hidden; }
			#tree { float:left; min-width:219px; border-right:1px solid silver; overflow:auto; padding:0px 0; }
			#data { margin-left:220px; }
			#data textarea { margin:0; padding:0; height:100%; width:100%; border:0; background:white; display:block; line-height:18px; resize:none; }
			#data, #code { font: normal normal normal 12px/18px 'Consolas', monospace !important; }
			#tree .folder { background:url('./file_sprite.png') right bottom no-repeat; }
			#tree .file { background:url('./file_sprite.png') 0 0 no-repeat; }
		</style>
		
	</head>
	
	<body id="catalogbody">
		<a id="chapter"></a><br/>
		<div id="container" role="main">
			<div id="tree"></div>
		</div>

		<!-- 虽然不知道为什么，但这里不要用jquery.min.js一直报错！！ -->
		<script src="../js/stack.js"></script>
		<script src="../../plugins/jstree/dist/jquery.js"></script>
		<script src="../../plugins/jstree/dist/jstree.min.js"></script>
		<script>
		//var ay_mssys = getCatalog();
		
	    //init(ay_mssys); 
	    var container=$('#container'); 
		container.jstree({'core':{data:null,'dblclick_toggle': false}});         //禁用tree的双击展开 
	    
		function init(catalogdata){
		  	container.jstree(true).settings.core.data=catalogdata;  
			container.jstree(true).refresh();  
		}
		
		container.on('changed.jstree', function (e, data) {
			if(data && data.selected && data.selected.length) {
				if(data.selected!=null){
					var cplink = document.getElementById("chapter");
					cplink.target = "content";
					cplink.href="Content.html#"+data.node.id;
					cplink.click();
				}
			}
			else {}
		});
		</script>
	</body>
</html>