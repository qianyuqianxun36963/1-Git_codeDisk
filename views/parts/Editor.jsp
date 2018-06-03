<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String paraPath = request.getParameter("filePath");
String servPath = request.getSession().getServletContext().getRealPath("/").replace("\\", "\\\\");
System.out.println("filepath:"+servPath + paraPath);
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
    <script type="text/javascript" src="plugins/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="plugins/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="plugins/vuejs/vue.min.js"></script>

	<script src="../NoteBook/views/js/common.js"></script>
    <script src="https://unpkg.com/marked@0.3.6"></script>
    <script src="https://unpkg.com/lodash@4.16.0"></script>

    <style type="text/css">
/*         #editorbody{ */
/*             background: #CC22DD; */
/*             margin: 0; */
/*             padding: 0; */
/*         } */
        .editArea{
            display: none;
        }

        #markdownStateArea, #htmlStateArea {
		    margin: 0;
		    height: 100%;
		    font-family: 'Helvetica Neue', Arial, sans-serif;
		    color: #333;
		}

		#markdownStateTextArea, #htmlStateTextArea, #markdownStateArea div, #htmlStateArea div {
		    display: inline-block;
		    width: 49%;
		    height: 100%;
		    vertical-align: top;
		    -webkit-box-sizing: border-box;
		    -moz-box-sizing: border-box;
		    box-sizing: border-box;
		    padding: 0 20px;
		}

		#markdownStateTextArea, #htmlStateTextArea {
		    border: none;
		    border-right: 1px solid #ccc;
		    resize: none;
		    outline: none;
		    background-color: #f6f6f6;
		    font-size: 14px;
		    font-family: 'Monaco', courier, monospace;
		    padding: 20px;
		}

		code {
		    color: #f66;
		}
    </style>
    
  </head>

<body id="editorbody">
<form action="views/parts/doTest.jsp" name="myform" method="post">
    <input type="button" onclick="test()" value="preview"/>
    <input type="button" onclick="savedata()" value="save" accesskey="s" />  
    <hr/>
    <div name="editor"            id="editor"            class="editArea" rows="30" cols="80"></div>

    <div name="htmlStateArea"     id="htmlStateArea"     class="editArea" rows="30" cols="80">
    	<textarea id="htmlStateTextArea" :value="input" @input="update"></textarea>
        <div id="htmlShowArea"></div>
    </div>

    <div name="markdownStateArea" id="markdownStateArea" class="editArea" rows="30" cols="80">
    	<textarea id="markdownStateTextArea" :value="input" @input="update"></textarea>
        <div v-html="compiledMarkdown"></div>
    </div>

</form>
</body>

<script type="text/javascript">
    var paraPath = "<%=paraPath%>";
    var storePath = "<%=servPath%>" + getProperty("notePath");
    var urlPath = getRootPath() + getProperty("notePath");


    //当请求带有参数的时候，会调用，现在基本没用。
    if (paraPath != ""&&paraPath!=null&&paraPath!="null"){
        initdata(paraPath);
    } 

    //调用方法的入口，类似了接口，供按钮调用。
    function initdata(path){
        paraPath = path;
    	var state = path[0].substring(path[0].indexOf('.')+1, path[0].length);
    	changeState(state);

        var editContext = new EditContext();
        editContext.change(currentState);
        editContext.initdata(path);
    }

    function savedata(){
        var editContext = new EditContext();
        editContext.change(currentState);
        var saveResult = editContext.savedata();
        alert(saveResult);
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

    //不加下面这句的话，ctrl + R 的时候，markdown和html编辑区域宽度重计算时会有一点点偏差！
    $(document).ready(function(){
        $(".editArea").width(document.body.offsetWidth-5).height(document.body.offsetHeight-40); 
    })

    //  ******* ---- 下面是状态模式相关的代码 ---- ****************//

    //几个编辑状态的实例
    var myState = new MyState();
    var htmlState = new HtmlState();
    var mdState = new MarkdownState();

    //全局变量，用来保存编辑区域和当前编辑状态
    var currentState = myState;


    //定义一个全局变量context，他包含了状态信息，并根据状态做出不同行为。
    function EditContext(){    }
    EditContext.prototype = {
        constructor:EditContext,
        currentState:null,
        change: function (state) {
            currentState = state;
        },
        savedata: function () {
            var saveResult = currentState.savedata();
            return saveResult;
        },
        initdata: function () {
	        var jsondata = {filePath:storePath + paraPath};
	        $.ajax({ type:"GET", data: jsondata, url: "views/function/getFiledata.jsp", dataType: "json",
	            success:function(data){
	            	currentState.initdata(data);
	            ;} 
	        });
            
        },
        onresize: function () {
            currentState.onresize();
        },
        test: function () {
            currentState.test();
        }
    }

    //  ******* ---- html编辑器 状态 的实现代码 ---- ****************//
    
    var htmlVm = new Vue({
        el: '#htmlStateArea',
        data: {
            input: ''
        },
        methods: {
            update: _.debounce(function (e) {
                currentState.savedata();
            }, 3000)
        }
    })

    //定义了一个状态类，包含了处理'my'类型的文件的所有操作。
    function HtmlState() { }
    
    HtmlState.prototype.initdata = function initdata(data){
    	debugger;
        $(".editArea").hide();
        $("#cke_editor").hide();
        $("#htmlStateArea").show();
        $("#htmlStateArea").width(document.body.offsetWidth-5).height(document.body.offsetHeight-40);
        editor_data = data[0].data;
        htmlVm.input = editor_data;
        $("#htmlShowArea").load( urlPath + paraPath);
    }

    HtmlState.prototype.savedata = function savedata(){
    	debugger;
    	var editor_data = $("#htmlStateTextArea").val();
        var saveResult = commonSaveTestToFile(editor_data);
        $("#htmlShowArea").load( urlPath + paraPath);
        return saveResult;
    }
    
    HtmlState.prototype.test =function test() {  
        var editor_data = $("#htmlStateTextArea").val();
        commonPreview(editor_data);
    }

    //窗口改变时候，改变编辑区 
    HtmlState.prototype.onresize = function () {
    	debugger;
        $("#htmlStateArea").width(document.body.offsetWidth-5).height(document.body.offsetHeight-40); 
    };

    //  ******* ---- html编辑器 状态 的实现代码 ---- ****************//

    //  ******* ---- markdown编辑器 状态 的实现代码 ---- ************//
    
    var markdownVm = new Vue({
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
    
    MarkdownState.prototype.initdata = function initdata(data){
    	debugger;
        $(".editArea").hide();
        $("#cke_editor").hide();
        $("#markdownStateArea").show();
        $(".markdownStateArea").width(document.body.offsetWidth-5).height(document.body.offsetHeight-40);
        editor_data = data[0].data;
        markdownVm.input = editor_data;
    }

    MarkdownState.prototype.savedata = function savedata(){
    	var editor_data = markdownVm.input;
        var saveResult = commonSaveTestToFile(editor_data);
        return saveResult;
    }
    
    MarkdownState.prototype.test =function test() {  
        var editor_data = markdownVm.input;
        commonPreview(editor_data);
    }

    //窗口改变时候，改变编辑区 
    MarkdownState.prototype.onresize = function () {
    	debugger;
        $("#markdownStateArea").width(document.body.offsetWidth-5).height(document.body.offsetHeight-40); 
    };

    //  ******* ---- markdown编辑器 状态 的实现代码 ---- ************//


    //  ********* ---- 富文本编辑器 状态 的实现代码 ---- *************//

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

    //让编辑器窗口充满编辑模块。这里要特殊处理下，由于ckeditor加载需要时间，然后在重新设置宽度时，就会有问题，需等它加载完在计算宽高。将方法直接写在initdata里面会有错。
    CKEDITOR.on('instanceReady', function (e) { 
        editor.resize( editor.container.getStyle( 'width' ),document.body.offsetHeight-40 );
    });

    //定义了一个状态类，包含了处理'my'类型的文件的所有操作。
    function MyState() { }
    
    MyState.prototype.initdata = function initdata(data){
        $(".editArea").hide();
        $("#cke_editor").show();
        editor_data = data[0].data;
        editor.setData(editor_data);
    }

    MyState.prototype.savedata = function savedata(){
        var editor_data = editor.getData();  
        var saveResult = commonSaveTestToFile(editor_data);
        return saveResult;
    }
    
    MyState.prototype.test =function test() {  
        //JavaScript判空，如果确定 
        var editor_data = editor.getData();
        commonPreview(editor_data);
    }

    //窗口改变时候，改变编辑区 
    MyState.prototype.onresize = function () {
        //alert(document.body.offsetHeight-30);
        editor.resize( editor.container.getStyle( 'width' ),document.body.offsetHeight-40 );
    };

    //  ********* ---- 富文本编辑器 状态 的实现代码 ---- *************//

    function commonSaveTestToFile(editor_data){
    	var saveResult = "";
    	console.log("try save to " + storePath + paraPath);
    	if(editor_data==null||editor_data==""){  
            alert("empty not allowed");  
        }else{  
               var jsondata = {data:editor_data,filePath:storePath + paraPath};
               $.ajax({ type:"POST", data: jsondata,async: false, url: "views/function/saveTofile.jsp",success:function(){saveResult = "save success!";}}); 
        }
        return saveResult;
    }

    function commonPreview(editor_data){
    	if(editor_data==null||editor_data==""){  
            alert("数据为空不能提交");  
        }else{  
            //alert(editor_data);
            document.myform.submit();  
        }   
    }

</script>

</html>
