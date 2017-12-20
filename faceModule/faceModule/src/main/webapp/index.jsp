<%@ page contentType="text/html; charset=UTF-8"  %>
<html>
<head>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<h2>Hello World!</h2>

<form id="myform">

    <hr>

    <label for="email">邮箱：</label><input id="email" name="email" placeholder="请输入邮箱" type="email" required />

    <hr>

    <button type="submit" class="btn btn-primary" id="">submit</button>

    <hr>


</form>

<div class="container-fluid" style="margin: 20px">
    <div class="row-fluid">
        <div class="span12">
            <ul class="breadcrumb">
                <li>
                    <a href="#">主页</a> <span class="divider">/</span>
                </li>
                <li>
                    <a href="#">类目</a> <span class="divider">/</span>
                </li>
                <li class="active">
                    主题
                </li>
            </ul>
            <h3>
                基础验证
            </h3>
            <form id="newform">
                <fieldset>
                    <legend>form表单</legend> <label>表签名</label><input type="text" required /> <span class="help-block">这里填写帮助信息.</span> <label class="checkbox"><input type="checkbox"  /> 勾选同意</label>
                    <button type="submit" class="btn">提交</button>
                </fieldset>
            </form>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
        </div>
    </div>
</div>

</body>

<script type="javascript">


</script>

</html>
