<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
典型的action定义:
<br/>
<s:a action="hello">hello</s:a>
<br/>
<s:a action="login">login</s:a>
<br/>
</div>

<div>
典型的数据处理:
<br/>
基本类型转换:
    List 类型转换:
	<s:form action="list">
		<table>
			<tr>
				<td>姓名:</td>
				<td><s:textfield name="users[0].name" theme="simple"/></td>
				<td><s:textfield name="users[1].name" theme="simple"/></td>
			</tr>
			<tr>
				<td>年龄:</td>
				<td><s:textfield name="users[0].age" theme="simple"/></td>
				<td><s:textfield name="users[1].age" theme="simple"/></td>
			</tr>
			<tr>
				<td colspan="3"><s:submit></s:submit></td>
			</tr>
		</table>
	</s:form>
	<br/>
	Map 类型转换:
	<s:form action="map">
		<table>
			<tr>
				<td>姓名:</td>
				<td><s:textfield name="users['first'].name" theme="simple"/></td>
				<td><s:textfield name="users['second'].name" theme="simple"/></td>
			</tr>
			<tr>
				<td>年龄:</td>
				<td><s:textfield name="users['first'].age" theme="simple"/></td>
				<td><s:textfield name="users['second'].age" theme="simple"/></td>
			</tr>
			<tr>
				<td colspan="3"><s:submit></s:submit></td>
			</tr>
		</table>
	</s:form>
<br/>

自定义类型转换:
<s:form action="user">
	<s:textfield name="user" label="请输入符合格式的字符串"/>
	<s:submit></s:submit>
</s:form>

</div>

<div>
典型的标签使用:
<br/>
</div>

<div>
典型的拦截器:
<br/>
</div>

<div>
典型的ajax应用:
<br/>
</div>

</body>
</html>