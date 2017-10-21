<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.io.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<% 

request.setCharacterEncoding("utf-8");
String content = request.getParameter("data"); 
System.out.print(content);

String filePath = request.getParameter("filePath").replaceAll("\\\\","/"); 
// System.out.println("this is editor content:" + content +" filePath:" + filePath);
try {
	Writer write = new BufferedWriter( new OutputStreamWriter(new FileOutputStream(filePath),"utf-8"));
	System.out.println(filePath);
	write.write(content);
	write.flush();
	write.close();
} catch (IOException e) {
	e.printStackTrace();
}

%>