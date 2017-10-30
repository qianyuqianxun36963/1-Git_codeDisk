package java语言.a_组织.c_类.封装;

import java语言.a_组织.c_类.封装.包外.包外子类;

public class 包内访问 {
	public static void main(String args[]){
		System.out.println("包内访问:");
		System.out.println("\n基本父类本身内部访问:");
		基本父类.func();
		
		System.out.println("\n父类实例访问:");
		基本父类 jiben = new 基本父类();
		jiben.publicfunction();
		jiben.packagefunction();
		jiben.protectedfunction();
//		jiben.privatefunction();  //同一个包内的类,不可以访问private 成员函数。仅在原始类内可以访问。
		
		System.out.println("\n子类实例(包内)访问:");
		包内子类 nchild = new 包内子类();
		nchild.publicfunction();
		nchild.protectedfunction();
		nchild.packagefunction(); //包内子类，继承了父类的友好成员变量和友好成员函数。
//		nchild.privatefunction();  //同一个包内的类,不可以访问private 成员函数。仅在原始类内可以访问。
		
		System.out.println("\n子类实例(包外)访问:");
		包外子类  wchild = new 包外子类();
		wchild.publicfunction();
		wchild.protectedfunction();
//		wchild.packagefunction(); //包外子类，没有继承父类的友好成员变量和友好成员函数。
//		wchild.privatefunction();  //同一个包内的类,不可以访问private 成员函数。仅在原始类内可以访问。
	}
}

