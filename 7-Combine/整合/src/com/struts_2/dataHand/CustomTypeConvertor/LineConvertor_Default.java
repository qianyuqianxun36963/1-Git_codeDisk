package com.struts_2.dataHand.CustomTypeConvertor;

import java.util.Map;

import com.opensymphony.xwork2.conversion.impl.DefaultTypeConverter;


//�̳�DefaultTypeConverter��������ת�����࣬ͨ����Ҫ��дconvertValue������

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
			//�ַ����ı�׼������(��С��,22)
			for(int i=0;i<param.length();i++){
				ch = param.charAt(i);
				if(ch!=','&&ch!='('&&ch!=')'){temp.append(ch);}
				else if(ch==','||ch==')'){
					//�жϵڼ�������:
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
