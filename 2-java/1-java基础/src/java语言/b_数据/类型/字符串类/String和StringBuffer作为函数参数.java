package java����.b_����.����.�ַ�����;


public class String��StringBuffer��Ϊ�������� {
	
	private static String str; //String һ�������������ڴ����д�����ˣ������ٸı䡣
	//String ������final�ģ���1�θ�ֵ֮��֮����޸Ķ��ǲ����µĶ��󣬲����ǲ�����ԭʼ����
	
	public static String getStr() {
		return str;
	}

	public void setStr(String str) {
		String��StringBuffer��Ϊ��������.str = str;
	}

	public static void main(String args[]){
		String��StringBuffer��Ϊ��������  strtest = new String��StringBuffer��Ϊ��������();
		strtest.setStr("wangyajun");
		strtest.test();		
	}
	
	public void test(){
		System.out.println(">>>>>>>>String:");
		System.out.println("������仯֮ǰ"+str);
		changeStr.changeStr_string_new(str);
		System.out.println("������仯֮��"+str);
		
		System.out.println("������仯֮ǰ"+str);
		changeStr.changeStr_string_change(str);
		System.out.println("������仯֮��"+str);

		System.out.println("\n>>>>>>>>StringBuffer:");
		StringBuffer strBuf=new StringBuffer("1111");
		System.out.println("������仯֮ǰ"+strBuf);
		changeStr.changeStr_buffer_new(strBuf);
		System.out.println("������仯֮��"+strBuf);
		
		System.out.println("������仯֮ǰ"+strBuf);
		changeStr.changeStr_buffer_change(strBuf);
		System.out.println("������仯֮��"+strBuf);
		
		//��֤����Stringʱ�Ǵ�ֵ���Ǵ����á�
		System.out.println("\n>>>>>>>>String��֤:");
		StringTest.test();
		
		System.out.println("\n>>>>>>>>StringBuffer��֤:");
		//��֤����StringBufferʱ�Ǵ�ֵ���Ǵ����á�
		StringBufferTest.test();
	}
}




class changeStr{
	public static void changeStr_string_new(String str){
		str="afterchange";
	}
	
	public static void changeStr_string_change(String str){
		str=str.concat("9999"); //�������ں����ڲ�������һ���¶��󡣷��ز���ȥ�ġ�
		System.out.println("�����ڲ��仯֮��"+str);
	}
	
	public static void changeStr_buffer_new(StringBuffer str){
		str=new StringBuffer("afterchange");
	}
	
	public static void changeStr_buffer_change(StringBuffer str){
		str=str.append("9999!!");
	}
}

/*��֤����Stringʱ�Ǵ�ֵ���Ǵ����á�*/
class StringTest {
	public static void test(){
		String str = "java";
		nochange(str, str);
		change(str, str);
	}
	 
	public static void nochange(String str1,String str2) {
		System.out.println("nochange--->>"+(str1 == str2));
	}
	 

	public static void change(String str1,String str2) {
		str1 = str1 + ""; //�������½���һ�����󣬲���ԭ���Ķ������޸Ķ������ˡ�
		System.out.println("change--->>"+(str1 == str2));
	}
}


/*��֤����StringBufferʱ�Ǵ�ֵ���Ǵ����á�*/
class StringBufferTest {
	public static void test(){
		StringBuffer str = new StringBuffer("java");
		nochange(str, str);
		change(str, str);
	}
	
	//����֤������ľ������ã���
	public static void nochange(StringBuffer str1,StringBuffer str2) {
		System.out.println("nochange--->>"+(str1 == str2));
	}
	 
	//����������ã������޸����ú�������ԭ����ָ��Ķ����ˡ�
	public static void change(StringBuffer str1,StringBuffer str2) {
		str1 = str1.append("changed");//��������ԭ�������޸Ķ���������C������Ĵ����������ˡ�
		System.out.println("change--->>"+(str1 == str2));
	}
}