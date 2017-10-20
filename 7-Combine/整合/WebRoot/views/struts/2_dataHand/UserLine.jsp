<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s"  uri="/struts-tags"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserLine.jsp' starting page</title>

  </head>
  
  <body>
    <center>
    	<s:property value="user"/><br/>
    	userName:<s:property value="user.name"/><br/>
    	userAge:<s:property value="user.age"/><br/>
    </center> <br>
  </body>
</html>
