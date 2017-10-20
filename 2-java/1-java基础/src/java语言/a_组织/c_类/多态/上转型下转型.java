package java����.a_��֯.c_��.��̬;

//1����������ָ��������󣬶��������ò���ָ�������
//2�����������ֱ�Ӹ����������ý�upcasting����ת�ͣ�����ת�Ͳ���ǿ��ת����
//      �磺Father f1 = new Son();
//3����ָ���������ĸ������ø����������ý�����ת��(downcasting)��Ҫǿ��ת����
//   �磺f1 ����һ��ָ���������ĸ������á���f1������������s1�� Son s1 = (Son)f1��
//           ����f1ǰ���(Son)������ϣ�����ǿ��ת����


public class ��ת����ת�� {
	public static void main(String args[]){
		
//*************************************ע�� ***********************************************
		Father f = new Son();  // ��ͽ� upcasting ������ת��)
		f.saySomething();      //��Ϊ��ת�ͣ�������ʵ��Ǻ�����д�ķ�����
//		f.sonSay();            //����f���ʲ���son���еķ�������Ȼf�����еġ�
		myprint(f.age);        //��Ϊ��ת�ͣ�������Ȼ���ʵ��Ǹ�������ԡ�
		myprint(f.getName());  //��Ϊ��ת�ͣ��������ʵľ��Ǻ��ӵķ�������õ�Ҳ�Ǻ�������name��ֵ��
		myprint(f.name);       //ע�⣬������ʵ���Ȼ�Ǹ�������name ����һ�в�һ��������
//*************************************ע�� ***********************************************	
		
		Son fristSon = (Son)f; // ��ͽ� downcasting (����ת��)  ע�⣬����Ҫǿ��ת����
		fristSon.saySomething();
		fristSon.sonSay();
		myprint(fristSon.age);
		myprint(fristSon.getName());
		

//*************************************ע�� ***********************************************
//		Son secondSon = (Son) new Father();  
//		secondSon.saySomething();  // ��һ���ڱ���ʱ����������������ʱ��ᱨ��ClassCastException
//*************************************ע�� ***********************************************
		
	}
	
	
	public static void myprint(String s){
		System.out.println(s);
	}
}

class Father{
	String age = "fatherage";
	String name = "fathername";
	public void saySomething(){
		System.out.println("I am Father.");
	}
	
	public String getName(){
		return name;
	}
}

class Son extends Father{
	String age = "sonage";
	String name = "sonname";
	public void saySomething(){
		System.out.println("I am Child.");
	}
	
	public String getName(){
		return name;
	}
	
	public void sonSay(){
		System.out.println("I am Child's func, father does't have.");
	}
}




