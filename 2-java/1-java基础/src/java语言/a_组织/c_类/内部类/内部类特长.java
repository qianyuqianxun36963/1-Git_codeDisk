package java语言.a_组织.c_类.内部类;

//普通的（非内部的）类，不能声明为private或protected；他们只能被赋予public或者包访问权限。

//java类只能单继承，使用内部类，可以通过内部类来继承其他父类。

public class 内部类特长 extends Father{
	private class SonA extends FatherA{}
	protected class SonB extends FatherB{};
	
	SonA sona = new SonA();
	SonB sonb = new SonB();
	
	public static void main(String args[]){
		内部类特长  insideClass = new 内部类特长();
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