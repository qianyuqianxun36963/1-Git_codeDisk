package java语言.a_组织.c_类.多态;

//1。父类引用指向子类对象，而子类引用不能指向父类对象。
//2。把子类对象直接赋给父类引用叫upcasting向上转型，向上转型不用强制转换。
//      如：Father f1 = new Son();
//3。把指向子类对象的父类引用赋给子类引用叫向下转型(downcasting)，要强制转换。
//   如：f1 就是一个指向子类对象的父类引用。把f1赋给子类引用s1即 Son s1 = (Son)f1；
//           其中f1前面的(Son)必须加上，进行强制转换。


public class 上转型下转型 {
	public static void main(String args[]){
		
//*************************************注意 ***********************************************
		Father f = new Son();  // 这就叫 upcasting （向上转型)
		f.saySomething();      //作为上转型，这里访问的是孩子重写的方法。
//		f.sonSay();            //这里f访问不到son独有的方法，虽然f中是有的。
		myprint(f.age);        //作为上转型，这里依然访问的是父类的属性。
		myprint(f.getName());  //作为上转型，这样访问的就是孩子的方法，获得的也是孩子属性name的值。
		myprint(f.name);       //注意，这里访问的依然是父类属性name 与上一行不一样！！！
//*************************************注意 ***********************************************	
		
		Son fristSon = (Son)f; // 这就叫 downcasting (向下转型)  注意，这里要强制转换。
		fristSon.saySomething();
		fristSon.sonSay();
		myprint(fristSon.age);
		myprint(fristSon.getName());
		

//*************************************注意 ***********************************************
//		Son secondSon = (Son) new Father();  
//		secondSon.saySomething();  // 这一句在编译时不报错，但是在运行时候会报错。ClassCastException
//*************************************注意 ***********************************************
		
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




