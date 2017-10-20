package com.struts_2.dataHand.CustomTypeConvertor;

import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;



//�̳�StrutsTypeConverter��������ת�����࣬ͨ����Ҫ��дconvertFromString������convertToString������

public class LineConvertor_Struts extends StrutsTypeConverter{
	
	@SuppressWarnings("rawtypes")
	public Object convertFromString(Map context,String[] values,Class toType){

			String[] params = (String[])values;
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
	
	@SuppressWarnings("rawtypes")
	public String convertToString(Map context,Object o){
		User user = (User) o;
		return ("("+user.getName()+","+user.getAge()+")");
		
	}

}
