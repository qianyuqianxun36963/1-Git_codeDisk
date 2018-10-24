简单对象： 字符串和数字
Scalar String:${scalarString}      
Scalar Number:${scalarNumber}  

List使用样例-List元素对象:   
<#list scalarList as list>  
    Scalar List值：${list}   
</#list>   
  
Map使用样例-Map元素对象:  

遍历map：
<#list scalarMap?keys as mykey>  
    Scalar Map key is :${mykey}  
    Scalar Map value is:${scalarMap[mykey]}  
</#list>    

单取map：
key anotherString的值${scalarMap.anotherString}
key anotherNumber的值${scalarMap.anotherNumber}

List、Map组合使用样例-MapList元素对象:  
<#list maplist as fruit>
	map.key名称: ${fruit.name}
	map.key价格: ${fruit.price}
</#list>
  
JavaBean使用样例-JavaBean元素对象:
	Object is:${scalarObject}   
	Object userid is: ${scalarObject.userId}
	Object username is: ${scalarObject.userName}
  
JavaBean_Map使用样例-Map Values元素为User对象: 
keys 可以用来遍历这个Map。
<#list userMap?keys as key1>  
	keys: ${key1}
	<#assign mapUser="${userMap[key1]}" >  
	User Object is :${mapUser}  
	User Name is :${userMap[key1].userName}
</#list>  

JavaBean_List使用样例-List元素为User对象:   
<#list userList as listUser>  
    List对象User Id值：${listUser.userId}   
</#list>   
