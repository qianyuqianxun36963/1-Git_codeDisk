package java����.b_����.����.�ַ�����;

public class ת���ַ����������ַ��������� {
	@SuppressWarnings("unused")
	public static void main(String args[]){
		String s="this is String \"where\" to change path:  C:\\wang\\ya\\test.txt";
		System.out.println(s);
		String s2=changestr(s);
		System.out.println(s2);
	}
	
	public static String changestr(String strToChange){
		String s = strToChange.replaceAll("\"", "\'");
		//System.out.println(s);
		String s2 = s.replaceAll("\\\\", "/");
		return s2;
	}
	
	
}
