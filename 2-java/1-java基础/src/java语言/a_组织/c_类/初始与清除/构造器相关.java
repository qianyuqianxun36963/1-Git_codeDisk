package java语言.a_组织.c_类.初始与清除;

public class 构造器相关 {
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

//	Animal(){legnum = 2;}         //	构造方法不可以重写 (Override)。
//	Animal(int num){legnum = num;}//	构造方法不可以重载 (Overload)。
	
//普通方法可以重写 Override
	void run(){	System.out.println("Human run");}
	
	Human(){legnum = 2;}
	
}