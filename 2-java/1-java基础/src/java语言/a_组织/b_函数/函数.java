package java����.a_��֯.b_����;

public class ���� {
	//java���涨�巽��(����)��ʱ���ܶ���Ĭ�ϲ�������void fun(int i = 5); ����������������C++�����á�
	public static void main(String args[]){
		System.out.println(getString());
		int j = getInt();
		System.out.println(j);
		String k = getString();
		System.out.println(j);
		System.out.println(k);
	}
	
	//C������ÿ��д�����Ƕ�������Լ���Ҫ���ؾֲ�����,Cû�����ã����ص���ָ�룬�ֲ��������ý���������(���ܲ�������)�����Է��ص��Ǹ�ָ��� �����ˡ�
	//��C++�У�����ָ��Ҳ�����ã�java�еĴ�ֵ����C++�����ã�������C��ָ�롣
	//�� java ��,�����ǽ������ô���,������ÿһ�ζ���ֵ��ʱ���������ü���,���������Ϊ0,�Ͳ�����վֲ�����,��ôҲ�Ͳ��������ʧ������
	
	public static String getString(){
		String s = "this is string";
		return s;
	}
	
	public static int getInt(){
		int i = 10;
		return i;
	}
}
