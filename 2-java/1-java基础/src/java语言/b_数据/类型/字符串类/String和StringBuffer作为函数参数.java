package java语言.b_数据.类型.字符串类;


public class String和StringBuffer作为函数参数 {
	
	private static String str; //String 一旦创建，它的内存就是写死的了，不能再改变。
	//String 类型是final的，第1次赋值之后，之后的修改都是产生新的对象，并不是操作的原始对象。
	
	public static String getStr() {
		return str;
	}

	public void setStr(String str) {
		String和StringBuffer作为函数参数.str = str;
	}

	public static void main(String args[]){
		String和StringBuffer作为函数参数  strtest = new String和StringBuffer作为函数参数();
		strtest.setStr("wangyajun");
		strtest.test();		
	}
	
	public void test(){
		System.out.println(">>>>>>>>String:");
		System.out.println("函数外变化之前"+str);
		changeStr.changeStr_string_new(str);
		System.out.println("函数外变化之后"+str);
		
		System.out.println("函数外变化之前"+str);
		changeStr.changeStr_string_change(str);
		System.out.println("函数外变化之后"+str);

		System.out.println("\n>>>>>>>>StringBuffer:");
		StringBuffer strBuf=new StringBuffer("1111");
		System.out.println("函数外变化之前"+strBuf);
		changeStr.changeStr_buffer_new(strBuf);
		System.out.println("函数外变化之后"+strBuf);
		
		System.out.println("函数外变化之前"+strBuf);
		changeStr.changeStr_buffer_change(strBuf);
		System.out.println("函数外变化之后"+strBuf);
		
		//验证传递String时是传值还是传引用。
		System.out.println("\n>>>>>>>>String验证:");
		StringTest.test();
		
		System.out.println("\n>>>>>>>>StringBuffer验证:");
		//验证传递StringBuffer时是传值还是传引用。
		StringBufferTest.test();
	}
}




class changeStr{
	public static void changeStr_string_new(String str){
		str="afterchange";
	}
	
	public static void changeStr_string_change(String str){
		str=str.concat("9999"); //这里是在函数内部建立以一个新对象。返回不回去的。
		System.out.println("函数内部变化之后"+str);
	}
	
	public static void changeStr_buffer_new(StringBuffer str){
		str=new StringBuffer("afterchange");
	}
	
	public static void changeStr_buffer_change(StringBuffer str){
		str=str.append("9999!!");
	}
}

/*验证传递String时是传值还是传引用。*/
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
		str1 = str1 + ""; //这里是新建了一个对象，不是原来的对象上修改而来的了。
		System.out.println("change--->>"+(str1 == str2));
	}
}


/*验证传递StringBuffer时是传值还是传引用。*/
class StringBufferTest {
	public static void test(){
		StringBuffer str = new StringBuffer("java");
		nochange(str, str);
		change(str, str);
	}
	
	//经验证，传入的就是引用！！
	public static void nochange(StringBuffer str1,StringBuffer str2) {
		System.out.println("nochange--->>"+(str1 == str2));
	}
	 
	//传入的是引用，而且修改引用后作用于原引用指向的对象了。
	public static void change(StringBuffer str1,StringBuffer str2) {
		str1 = str1.append("changed");//这里是在原对象上修改而来，就像C语言里的传引用类似了。
		System.out.println("change--->>"+(str1 == str2));
	}
}