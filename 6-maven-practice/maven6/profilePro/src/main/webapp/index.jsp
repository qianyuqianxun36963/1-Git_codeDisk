<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<body>
<h2>Hello World!</h2>

<a href="<%=basePath %>profiletest.do">Annotation_JSP,do结尾的</a><br/><br/>
</body>
</html>
