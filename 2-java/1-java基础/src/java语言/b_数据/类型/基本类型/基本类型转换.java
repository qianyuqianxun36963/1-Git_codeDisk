package java语言.b_数据.类型.基本类型;

public class 基本类型转换 {
	public static void main(String args[]){
		changeStrToNum();
		changeNumToStr();
	}
	
	public static void changeNumToStr(){
//	各种数字类型转换成字符串型： 
	    int value =123;
		String str = String.valueOf(value); // 其中 value 为任意一种数字类型。 
		System.out.println(str);
	}
	
	
//	字符串型转换成各种数字类型： 
	public static void changeStrToNum(){
		String s = "127"; 
		byte b = Byte.parseByte( s ); //这里s最大也只能取127   
//		byte是一个字节保存的，有8个位，即8个0、1。
//		8位的第一个位是符号位，
//		也就是说0000 0001代表的是数字1		1000 0000代表的就是-1
//		所以正数最大位0111 1111，也就是数字127,  负数最大为1111 1111，也就是数字-128
		short t = Short.parseShort( s ); 
		int i = Integer.parseInt( s ); 
		long l = Long.parseLong( s ); 
		Float f = Float.parseFloat( s ); 
		Double d = Double.parseDouble( s );
	
	    System.out.println("String转byte最大也就127: byte:"+b+"\n"+t+" "+i+" "+l+" "+f+" "+d);
	}
	
//	数字类型与数字类对象之间的转换： 

	public void changeBaseType(){
		byte b = (byte) 169; 
		Byte bo = new Byte( b ); 
		b = bo.byteValue(); 
	
		short t = 169; 
		Short to = new Short( t ); 
		t = to.shortValue(); 
	
		int i = 169; 
		Integer io = new Integer( i ); 
		i = io.intValue(); 
	
		long l = 169; 
		Long lo = new Long( l ); 
		l = lo.longValue(); 
	
		float f = 169f; 
		Float fo = new Float( f ); 
		f = fo.floatValue(); 
	
		double d = 169f; 
		Double dObj = new Double( d ); 
		d = dObj.doubleValue();
	}
}


