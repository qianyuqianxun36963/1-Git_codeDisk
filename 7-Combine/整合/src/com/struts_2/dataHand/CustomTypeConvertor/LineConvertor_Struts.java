package com.struts_2.dataHand.CustomTypeConvertor;

import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;



//继承StrutsTypeConverter类来定义转换器类，通常需要重写convertFromString方法和convertToString方法。

public class LineConvertor_Struts extends StrutsTypeConverter{
	
	@SuppressWarnings("rawtypes")
	public Object convertFromString(Map context,String[] values,Class toType){

			String[] params = (String[])values;
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
	
	@SuppressWarnings("rawtypes")
	public String convertToString(Map context,Object o){
		User user = (User) o;
		return ("("+user.getName()+","+user.getAge()+")");
		
	}

}
