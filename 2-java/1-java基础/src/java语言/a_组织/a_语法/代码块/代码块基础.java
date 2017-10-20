package java语言.a_组织.a_语法.代码块;

public class 代码块基础 {
	public static void main(String args[]){
		NormalBlock.test();
		ConstructBlock.test();
		(new ConstructBlock()).test();
		StaticBlock.test();
	}
}

//普通代码块 
//位置：在方法或语句中出现！
class NormalBlock{
	public static void test(){
		{
			int i = 111;
			System.out.println(i);
		}
		int i = 222;
		System.out.println(i);
		{
//			int i =333;//本句出错，i 已经定义了！？可能跟前面一个代码块重叠了。
			System.out.println(i);
			i = 333;
			System.out.println(i);
		}
	}
}

//构造代码块
//位置：直接在类中定义，且没有加static关键字的代码块
class ConstructBlock{
	{
		System.out.println("类定义中的-构造代码块");
	}
	ConstructBlock(){
		//主要方法的调用顺序！--额额额，这不就是普通代码块嘛。
		//出现在构造方法里面的代码块，可不是构造代码块了！！
		{System.out.println("构造方法里的-构造代码块1");}
		System.out.println("构造方法");
		{System.out.println("构造方法里的-构造代码块2");}
	}
	public static void test(){
		System.out.println("正常的方法");
	}
}

//静态代码块
//位置：在java中使用static关键字声明的代码块！不能存在于任何方法体内！
class StaticBlock{
	static{
		System.out.println("StaticBlock的静态代码块");
	}
	
	{
		System.out.println("StaticBlock的构造块");    
	}
     
	public StaticBlock(){
		System.out.println("StaticBlock的构造方法");
   	}
        
	public static void test(){
		System.out.println("StaticBlock的主方法");
		new Code();
		new Code();
		new StaticBlock();
		new StaticBlock();
	}
}

class Code{
    //静态块用于初始化类，为类的属性初始化。每个静态代码块只会执行一次。由于JVM在加载类时会执行静态代码块，所以静态代码块先于主方法执行。
    //1 静态代码块不能存在于任何方法体内。2 静态代码块不能直接访问静态实例变量和实例方法，需要通过类的实例对象来访问。
    static{
        System.out.println("Code的静态代码块");
    }
    
    {
    	System.out.println("Code的构造块");
	}
        
    public Code(){
        System.out.println("Code的构造方法");
    }
}

//同步代码块
class SyncBlock{
	
}