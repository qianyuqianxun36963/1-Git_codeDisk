package java����.a_��֯.c_��.�̳�;

public class �̳� {
	public static void main(String args[]){
		subclass sb = new subclass();
		sb.test();
	}
}

//java����Ļ�����ֻ���ǵ��̳У����ǿ��Զ��ؼ̳С�

//��������ģ�����ȥ����C++������̳���������⺯���Ĵ��� ������麯����Ȼ��Ĭ�ϲ�������
abstract class baseclass{
	int val;
	baseclass(){this.val = 0;}
	public abstract void fun();
	public abstract void test();
}

class subclass extends baseclass{
	int val;
	subclass(){this.val = 1;}
	public void fun()  {System.out.println(val);}
	public void test() {fun();}

}