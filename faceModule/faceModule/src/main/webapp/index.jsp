<%@ page contentType="text/html; charset=UTF-8"  %>
<html>
<head>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <!-- html5Validate js 文件 -->
    <script src="static/js/lib/html5Validate/jquery-html5Validate.js"></script>
</head>
<body>
<h2 style="margin: 20px" >Hello World!</h2>

<div class="container-fluid" style="margin: 20px">
    <div class="row-fluid">
        <div class="span12">
            <h3>
                基础验证
            </h3>
            <form id="newform">
                <fieldset>
                    <label for="email">邮箱：</label><input id="email" name="email" placeholder="请输入邮箱" type="email" required /><br>
                    <label for="qq">QQ：</label><input id="qq" name="qq" placeholder="请输入qq" type="qq" required /><br>

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
