package com.struts_2.dataHand.CustomTypeConvertor;

import java.util.Map;

import com.opensymphony.xwork2.conversion.impl.DefaultTypeConverter;


//继承DefaultTypeConverter类来定义转换器类，通常需要重写convertValue方法。

public class LineConvertor_Default extends DefaultTypeConverter{
	
	@SuppressWarnings("rawtypes")
	public Object convertValue(Map<String,Object> context,Object value,Class toType){
		if(toType == User.class){
			String[] params = (String[])value;
			String   param = params[0];
			User user = new User();
			StringBuilder temp = new StringBuilder();
			char ch;
			int j = 0;
			//字符串的标准类型是(王小二,22)
			for(int i=0;i<param.length();i++){
				ch = param.charAt(i);
				if(ch!=','&&ch!='('&&ch!=')'){temp.append(ch);}
				else if(ch==','||ch==')'){
					//判断第几个数字:
					switch(j){
						case 0 :{user.setName(temp.toString());temp.delete(0,temp.length());break;}
						case 1 :{user.setAge(temp.toString());temp.delete(0,temp.length());break;}
						default : break;
					}
					j++;
				}
			}
			return (Object) user;
		}
		
		else if(toType == String.class){
			User user = (User) value;
			return (Object)("("+user.getName()+","+user.getAge()+")");
		}
		return null;
	}

}
