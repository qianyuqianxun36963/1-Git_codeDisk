package java����.b_����.����.�ַ�����;

public class �ַ����г����״�� {
	public static void main(String args[]){
		stringInit();
		stringLengthParameter();
	}
	
	static void stringInit(){
		String s1 ="a";
		String s2 = s1 + "b";
		String s3 = "a" + "b";
		
		System.out.println(s2 == s3);
		System.out.println(s2 == "ab");
		System.out.println(s3 == "ab");
	}
	
	static void stringLengthParameter(){
		String s = "1234";
		System.out.println(s.length());

		String[] sarray = {"a","b","c"};
		System.out.println(sarray.length);
	}
}

//��һ������ӡ�Ľ��Ϊ false���ڶ�������ӡ�Ľ��Ϊ true����˵�� javac ������Զ�
//�ַ�������ֱ����ӵı��ʽ�����Ż�������Ҫ�ȵ�������ȥ���мӷ����㴦�������ڱ�
//��ʱȥ�����еļӺţ�ֱ�ӽ�������һ����Щ���������Ľ����
