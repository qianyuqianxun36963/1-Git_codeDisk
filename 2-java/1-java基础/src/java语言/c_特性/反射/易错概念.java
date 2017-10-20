package java语言.c_特性.反射;

//super.getClass() 返回的是当前对象引用

import java.util.Date;

public class 易错概念  extends Date{
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

你可能会认为test1打印的是Father，但是实际的结果是Test。没错，你没有看错，super.getClass()并不会返回超类的引用。我们再做一个实验，在test方法中直接调用getClass().getName()方法，则结果返回的是Test。为什么super没有起作用呢？简单来说，super并不能代表一个超类的引用。 

因为super并没有代表超类的一个引用的能力，只是代表调用父类的方法而已。所以，在子类的方法中，不能这样用System.out.println(super);也不能使用super.super.mathod();

事实上，super.getClass()是表示调用父类的方法。getClass方法来自Object类，它返回对象在运行时的类型。因为在运行时的对象类型是Test，所以this.getClass()和super.getClass()都是返回Test。

此外，由于getClass()在Object类中定义成了final，子类不能覆盖该方法，所以，在test方法中调用getClass().getName()方法，其实就是在调用从父类继承的getClass()方法，等效于调用super.getClass().getName()方法，所以，super.getClass().getName()方法返回的也应该是Test。 

如果想得到父类的名称，应该用如下代码： 

Java代码 
getClass().getSuperClass().getName();*/