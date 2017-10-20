<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录过后</title>
</head>
<body>


这里使用JSP自带的javaBean接受上页login传递过来的参数，其中request里面的属性名与javaBean里面的属性名一样。
<jsp:useBean id="userbean" scope="page" class="com.struts_1.begin.UserBean"/>
<jsp:setProperty property="*" name="userbean"/>
<br/>
<%out.println("username："+userbean.getUsername());%>
<br/>
<%out.println("password："+userbean.getPassword());%>

</body>
</html>