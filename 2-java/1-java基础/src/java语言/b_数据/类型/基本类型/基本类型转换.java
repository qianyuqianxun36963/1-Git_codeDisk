package java����.b_����.����.��������;

public class ��������ת�� {
	public static void main(String args[]){
		changeStrToNum();
		changeNumToStr();
	}
	
	public static void changeNumToStr(){
//	������������ת�����ַ����ͣ� 
	    int value =123;
		String str = String.valueOf(value); // ���� value Ϊ����һ���������͡� 
		System.out.println(str);
	}
	
	
//	�ַ�����ת���ɸ����������ͣ� 
	public static void changeStrToNum(){
		String s = "127"; 
		byte b = Byte.parseByte( s ); //����s���Ҳֻ��ȡ127   
//		byte��һ���ֽڱ���ģ���8��λ����8��0��1��
//		8λ�ĵ�һ��λ�Ƿ���λ��
//		Ҳ����˵0000 0001�����������1		1000 0000����ľ���-1
//		�����������λ0111 1111��Ҳ��������127,  �������Ϊ1111 1111��Ҳ��������-128
		short t = Short.parseShort( s ); 
		int i = Integer.parseInt( s ); 
		long l = Long.parseLong( s ); 
		Float f = Float.parseFloat( s ); 
		Double d = Double.parseDouble( s );
	
	    System.out.println("Stringתbyte���Ҳ��127: byte:"+b+"\n"+t+" "+i+" "+l+" "+f+" "+d);
	}
	
//	�������������������֮���ת���� 

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


