package java����.c_����.����;

//super.getClass() ���ص��ǵ�ǰ��������

import java.util.Date;

public class �״����  extends Date{
	public static void main(String args[]){
		new Son().test3();
	}
}

class Father{}

class Son extends Father{
//	private static final long serialVersionUID = 2L;
	void test1(){System.out.println(super.getClass().getName());}
	void test2(){System.out.println(this.getClass().getName());}
	void test3(){System.out.println(super.getClass().getSuperclass().getName());}
}

/*

����ܻ���Ϊtest1��ӡ����Father������ʵ�ʵĽ����Test��û����û�п���super.getClass()�����᷵�س�������á���������һ��ʵ�飬��test������ֱ�ӵ���getClass().getName()�������������ص���Test��Ϊʲôsuperû���������أ�����˵��super�����ܴ���һ����������á� 

��Ϊsuper��û�д������һ�����õ�������ֻ�Ǵ�����ø���ķ������ѡ����ԣ�������ķ����У�����������System.out.println(super);Ҳ����ʹ��super.super.mathod();

��ʵ�ϣ�super.getClass()�Ǳ�ʾ���ø���ķ�����getClass��������Object�࣬�����ض���������ʱ�����͡���Ϊ������ʱ�Ķ���������Test������this.getClass()��super.getClass()���Ƿ���Test��

���⣬����getClass()��Object���ж������final�����಻�ܸ��Ǹ÷��������ԣ���test�����е���getClass().getName()��������ʵ�����ڵ��ôӸ���̳е�getClass()��������Ч�ڵ���super.getClass().getName()���������ԣ�super.getClass().getName()�������ص�ҲӦ����Test�� 

�����õ���������ƣ�Ӧ�������´��룺 

Java���� 
getClass().getSuperClass().getName();*/