package java����.a_��֯.c_��.��ʼ�����;

public class ��������� {
	public static void main(String args[]){
		Animal animal = new Animal();
		animal.run();
	}
}

class Animal{
	int legnum;
	
//	Animal(){legnum = 0;}
//	public 	Animal(){legnum = 0;}
	Animal(){legnum = 0;}
	
	void run(){	System.out.println("Animal run");}
}

class Human extends Animal{

//	Animal(){legnum = 2;}         //	���췽����������д (Override)��
//	Animal(int num){legnum = num;}//	���췽������������ (Overload)��
	
//��ͨ����������д Override
	void run(){	System.out.println("Human run");}
	
	Human(){legnum = 2;}
	
}