package java����.b_����.����.�ַ�����;

public class �ַ������ù��� {
	public static void main(String args[]){
		String string = "   /#path#/ ";
		String result1 = util.mytrim(string,"/");
		String result2 = util.mytrim(result1,"#");
		System.out.println(result2);
	}
}

//ȥ��ͷβ�ض����ַ�
class util{
	public static String mytrim(String str,String tag){
		str = str.trim();
		while(str.startsWith(tag)) str = str.substring(1);
		while(str.endsWith(tag)) str = str.substring(0,str.length()-1);
		return str;
	}
}