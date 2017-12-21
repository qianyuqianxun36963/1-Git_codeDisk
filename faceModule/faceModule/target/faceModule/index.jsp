<%@ page contentType="text/html; charset=UTF-8"  %>
<html>
<head>
    <link rel="stylesheet" href="static/css/lib/bootstrap/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="static/js/lib/jquery/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="static/js/lib/bootstrap/bootstrap.min.js"></script>
    <%--html5Validata验证的包--%>
    <script src="static/js/lib/html5Validate/jquery-html5Validate.js"></script>

<%--<style>
        /*表单认证错误样式*/
        .error {
            box-shadow: 0 0 10px #ff4136 !important;
        }
    </style>--%>

</head>
<body>
<h2>Hello World!</h2>

<form id="myform">

    <hr>

    <label for="email">邮箱：</label><input id="email" name="email" placeholder="请输入邮箱" type="email" required />

    <hr>

    <label for="qq">QQ：</label><input id="qq" name="qq" placeholder="请输入QQ" type="qq" required />

    <hr>

    <label>昵称：</label><input type="nickname" class="nickname" required data-min="6" data-max="20" /> 6-20个单词字符

    <hr>

    <button onclick="validate()">检测</button>

    <button type="submit" class="btn btn-primary" id="">submit</button>

    <hr>

</form>

</body>

<script type="javascript">
    function validate(){
        alert("验证中...");
        OBJREG.NICKNAME = "^\\w+$";
        OBJREG["prompt"].nickname = "只能是字母数字以及下划线";

        var nickname = $(".nickname");
        if ($.html5Validate.isAllpass(nickname)) {
            alert("验证通过！");
        }
    }
</script>

</html>
