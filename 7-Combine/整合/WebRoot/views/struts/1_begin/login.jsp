<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录界面</title>
</head>
<body>

<!-- 下面这个action地址需要转码  方法在com.struts_1.快速上手-->
这里使用form传值，将数据放在request里面，属性名与javabean里面的属性名必须相同。<br/>
<form action="./views/1_begin/loged.jsp" method="post">
<input type="text"     name="username">
<br/>
<input type="password" name="password">
<br/>
<input type="submit" value="提交">
</form>

</body>
</html>