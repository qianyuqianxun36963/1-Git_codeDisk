�򵥶��� �ַ���������
Scalar String:${scalarString}      
Scalar Number:${scalarNumber}  

Listʹ������-ListԪ�ض���:   
<#list scalarList as list>  
    Scalar Listֵ��${list}   
</#list>   
  
Mapʹ������-MapԪ�ض���:  

����map��
<#list scalarMap?keys as mykey>  
    Scalar Map key is :${mykey}  
    Scalar Map value is:${scalarMap[mykey]}  
</#list>    

��ȡmap��
key anotherString��ֵ${scalarMap.anotherString}
key anotherNumber��ֵ${scalarMap.anotherNumber}

List��Map���ʹ������-MapListԪ�ض���:  
<#list maplist as fruit>
	map.key����: ${fruit.name}
	map.key�۸�: ${fruit.price}
</#list>
  
JavaBeanʹ������-JavaBeanԪ�ض���:
	Object is:${scalarObject}   
	Object userid is: ${scalarObject.userId}
	Object username is: ${scalarObject.userName}
  
JavaBean_Mapʹ������-Map ValuesԪ��ΪUser����: 
keys ���������������Map��
<#list userMap?keys as key1>  
	keys: ${key1}
	<#assign mapUser="${userMap[key1]}" >  
	User Object is :${mapUser}  
	User Name is :${userMap[key1].userName}
</#list>  

JavaBean_Listʹ������-ListԪ��ΪUser����:   
<#list userList as listUser>  
    List����User Idֵ��${listUser.userId}   
</#list>   
