<html> 
<head> 
    <title>Welcome!</title> 
	<!--     注意这里设置html的编码方式，不然会乱码！！ -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
</head> 
<body> 
    <h1 align="center">${head}!</h1> 
    <#list userList as person>  
		${person.title}
		${person.name}
		${person.begintime}
		${person.finishtime}
		${person.extend}
		
	</#list> 
    
</body> 
</html> 