package java����.a_��֯.c_��.�ڲ���;

//��ͨ�ģ����ڲ��ģ��࣬��������Ϊprivate��protected������ֻ�ܱ�����public���߰�����Ȩ�ޡ�

//java��ֻ�ܵ��̳У�ʹ���ڲ��࣬����ͨ���ڲ������̳��������ࡣ

public class �ڲ����س� extends Father{
	private class SonA extends FatherA{}
	protected class SonB extends FatherB{};
	
	SonA sona = new SonA();
	SonB sonb = new SonB();
	
	public static void main(String args[]){
		�ڲ����س�  insideClass = new �ڲ����س�();
		insideClass.printname();
		insideClass.sona.printname();
		insideClass.sonb.printname();
	}
}

class Father{
	String name = "father";
	public void printname(){System.out.println("this is Father's name:"+name);}
}

class FatherA{
	String name = "fatherA";
	public void printname(){System.out.println("this is FatherA's name:"+name);}
}

class FatherB{
	String name = "fatherB";
	public void printname(){System.out.println("this is FatherB's name:"+name);}
}