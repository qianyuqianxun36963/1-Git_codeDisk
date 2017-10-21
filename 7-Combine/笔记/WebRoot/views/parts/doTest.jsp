<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <title>获取传递的数据 -- by jCuckoo</title>  
  </head>  
  <body>  
    <%request.setCharacterEncoding("utf-8"); %>  
    <%=request.getParameter("editor") %>  
  </body>  
</html>  