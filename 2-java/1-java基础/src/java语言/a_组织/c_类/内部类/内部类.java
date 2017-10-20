package java语言.a_组织.c_类.内部类;

//内部类有两种情况：
//(1) 在类中定义一个类(私有内部类，静态内部类)
//(2) 在方法中定义一个类(局部内部类，匿名内部类)

public class 内部类 {

	public static void main(String[] args) {
		OutClass outclass = new OutClass();
		outclass.outPrint();
	}
}

class OutClass{
	
	private String outClassProperty = "this is OutClass's property";
//	内部类对包围它的外部类可见
//	在外部类的作用范围内可以任意创建内部类对象，即使内部类是私有的(私有内部类)。
	public void outPrint(){
		InnerClass inner = new InnerClass();
		inner.innerPrint();
	}
	
	class InnerClass{
//		外部类对内部类可见
//		在内部类中可以访问其外部类的所有域，即使是私有域。
		void innerPrint(){System.out.println("this is from OutClass:" + outClassProperty);}
	}
}


/** 
  问题来了：上面两个特点到底如何办到的呢？内部类的"内部"到底发生了什么？

      其实，内部类是Java编译器一手操办的。虚拟机并不知道内部类与常规类有什么不同。 编译器是如何瞒住虚拟机的呢？

     对内部类进行编译后发现有两个class文件：Outer.class 和Outer$Inner.class 。这说明内部类Inner仍然被编译成一个独立的类(Outer$Inner.class)，而不是Outer类的某一个域。 虚拟机运行的时候，也是把Inner作为一种常规类来处理的。

     但问题来了，即然是两个常规类，为什么他们之间可以互相访问私有域那(最开始提到的两个内部类特点)？这就要问问编译器到底把这两个类编译成什么东西了。

      我们利用reflect反射机制来探查了一下内部类编译后的情况（关于探查类内部机制的代码提供在下面的附件里Reflect.java）。

  (1)、编译代码1生成 Outer$Inner.class 文件后使用 ReflectUtil.reflect("Outer$Inner") 对内部类Inner进行反射。运行结果 发现了三个隐含的成分：          

//反编译1  
class Outer$Inner   
{   
    Outer$Inner(Outer,Outer$Inner);  //包可见构造器   
    private Outer$Inner(Outer);   //私有构造器将设置this$0域   
    final Outer this$0;   //外部类实例域this$0  
}  

      好了，现在我们可以解释上面的第一个内部类特点了： 为什么外部类可以创建内部类的对象？并且内部类能够方便的引用到外部类对象?

     首先编译器将外、内部类编译后放在同一个包中。在内部类中附加一个包可见构造器。这样， 虚拟机运行Outer类中Inner in=new Inner(); 实际上调用的是包可见构造： new Outer$Inner(this,null)。因此即使是private内部类，也会通过隐含的包可见构造器成功的获得私有内部类的构造权限。

      再者，Outer$Inner类中有一个指向外部类Outer的引用this$0，那么通过这个引用就可以方便的得到外部类对象中可见成员。但是Outer类中的private成员是如何访问到的呢？这就要看看下面Outer.class文件中的秘密了。

  (2)、编译代码2生成 Outer.class文件，然后使用 ReflectUtil.reflect("Outer") 对外部类Outer进行反射 。 运行结果 发现一个隐含成分如下：

//反编译2  
class Outer   
{   
    static int access$0(Outer);  //静态方法，返回值是外部类私有域 data 的值。   
}  
     
         现在可以解释第二个特点了：为什么内部类可以引用外部类的私有域？
 
         原因的关键就在编译器在外围类中添加了静态方法access$0。 它将返回值作为参数传递给他的对象域data。这样内部类Inner中的打印语句：

    System.out.println(data);

         实际上运行的时候调用的是：

    S ystem.out.println(this$0.access$0(Outer));

总结一下编译器对类中内部类做的手脚吧：

(1)  在内部类中偷偷摸摸的创建了包可见构造器，从而使外部类获得了创建权限。

(2)  在外部类中偷偷摸摸的创建了访问私有变量的静态方法，从而 使 内部类获得了访问权限。

这样，类中定义的内部类无论私有，公有，静态都可以被包围它的外部类所访问。

 
**/
