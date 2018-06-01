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
	<script type="text/javascript" src="plugins/vuejs/vue.min.js"></script>

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
	<textarea name="editor"            id="editor"            rows="30" cols="80"></textarea>
	<textarea name="htmlStateArea"     id="htmlStateArea"     rows="30" cols="80"></textarea>
	<textarea name="markdownStateArea" id="markdownStateArea" rows="30" cols="80"></textarea>

</form>
</body>

<script type="text/javascript">
	var paraPath = "<%=paraPath%>";
	var storePath = "<%=storePath%>";
	var state = paraPath.substring(paraPath.indexOf('.')+1, paraPath.length);

	//当请求带有参数的时候，会调用，现在基本没用。
	if (paraPath != ""&&paraPath!=null&&paraPath!="null"){
		state = paraPath.substring(paraPath.indexOf('.')+1, paraPath.length);
		changeState(state);
		initdata(paraPath);
	} 

	//编辑几个状态实例
	var myState = new MyState();
	var htmlState = {};
	var mdState = {};

	//全局变量，用来保存编辑区域和当前编辑状态
	var currentState = myState;


	//调用方法的入口，类似了接口，供按钮调用。
	function initdata(path){
		var editContext = new EditContext();
        editContext.change(currentState);
        editContext.initdata(path);
	}

	function savedata(){
		var editContext = new EditContext();
        editContext.change(currentState);
        editContext.savedata();
	}

	function test(){
		var editContext = new EditContext();
        editContext.change(currentState);
        editContext.test();
	}

	window.onresize = function(){
		var editContext = new EditContext();
        editContext.change(currentState);
        editContext.onresize();
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

	//定义一个全局变量context，他包含了状态信息，并根据状态做出不同行为。
	function EditContext(){	}
	EditContext.prototype = {
		constructor:EditContext,
		currentState:null,
		change: function (light) {
	        currentState = light;
	    },
		onresize: function () {
			currentState.onresize();
		},
		test: function () {
			currentState.test();
		},
		savedata: function () {
			currentState.savedata();
		},
		initdata: function (path) {
			currentState.initdata(path);
		}
	}

	//  ***************************** ---- markdown编辑器 状态 的实现代码 ---- **********************************//
	
	new Vue({
        el: '#markdownStateArea',
        data: {
            input: ''
        },
        computed: {
            compiledMarkdown: function () {
                return marked(this.input, { sanitize: true })
            }
        },
        methods: {
            update: _.debounce(function (e) {
                this.input = e.target.value
            }, 300)
        }
    })

	//定义了一个状态类，包含了处理'my'类型的文件的所有操作。
    function MarkdownState() { }
    
    MarkdownState.prototype.initdata = function initdata(path){
	    
    }

    MarkdownState.prototype.savedata = function savedata(){

    }
    
    MarkdownState.prototype.test =function test() {  
        
    }

    //窗口改变时候，改变编辑区 
	MarkdownState.prototype.onresize = function () {
		
	};

	//  ***************************** ---- markdown编辑器 状态 的实现代码 ---- **********************************//



	//  ******************************* ---- 富文本编辑器 状态 的实现代码 ---- ***********************************//

    var	editor = CKEDITOR.replace('editor',{
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

    //定义了一个状态类，包含了处理'my'类型的文件的所有操作。
    function MyState() { }
    
    MyState.prototype.initdata = function initdata(path){
    	debugger;
	    paraPath = path;
    	var jsondata;
    	//如果是初始化的时候调用的，就直接用页面变量filePath。如果是通过tree上的节点调用的，就使用传来的路径参数。
    	if(path==null) 	jsondata = {filePath:storePath + paraPath};
    	else {jsondata = {filePath:storePath+path};}
    	$.ajax({ type:"GET", data: jsondata, url: "views/function/getFiledata.jsp", dataType: "json",
    		success:function(data){
    			editor_data = data[0].data;
    			editor.setData(editor_data);
    		;} 
    	});
    }

    MyState.prototype.savedata = function savedata(){
    	var editor_data = editor.getData();  
        if(editor_data==null||editor_data==""){  
            alert("empty not allowed");  
        }else{  
           	var jsondata = {data:editor_data,filePath:storePath + paraPath};
           	$.ajax({ type:"POST", data: jsondata, url: "views/function/saveTofile.jsp",success:function(){alert("save success!");}}); 
        }
    }
    
    MyState.prototype.test =function test() {  
        //JavaScript判空，如果确定 
        var editor_data = editor.getData();  
        if(editor_data==null||editor_data==""){  
            alert("数据为空不能提交");  
        }else{  
            //alert(editor_data);
            document.myform.submit();  
        }         
    }

    //窗口改变时候，改变编辑区 
	MyState.prototype.onresize = function () {
		//alert(document.body.offsetHeight-30);
		editor.resize( editor.container.getStyle( 'width' ),document.body.offsetHeight-40 );
	};

	//  ******************************* ---- 富文本编辑器 状态 的实现代码 ---- ***********************************//

</script>

</html>
