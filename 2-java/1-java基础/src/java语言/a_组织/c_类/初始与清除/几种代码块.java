package java语言.a_组织.c_类.初始与清除;


//执行顺序：（优先级从高到低。）静态代码块>main方法>构造代码块>构造方法。

//其中静态代码块只执行一次。构造代码块在每次创建对象是都会执行。

//1 普通代码块：在方法或语句中出现的{}就称为普通代码块。
//普通代码块和一般的语句执行顺序由他们在代码中出现的次序决定--“先出现先执行”

//2 构造代码块：直接在类中定义且没有加static关键字的代码块称为{}构造代码块。
//构造代码块在创建对象时被调用，每次创建对象都会被调用
//并且构造代码块的执行次序优先于类构造函数。

//3 静态代码块：在java中使用static关键字声明的代码块。
//静态块用于初始化类，为类的属性初始化。每个静态代码块只会执行一次。
//由于JVM在加载类时会执行静态代码块，所以静态代码块先于主方法执行。
//如果类中包含多个静态代码块，那么将按照"先定义的代码先执行，后定义的代码后执行"。
//注意： 1 静态代码块不能存在于任何方法体内。
//      2 静态代码块不能直接访问静态实例变量和实例方法，需要通过类的实例对象来访问。
public class 几种代码块 {
    public static void main(String[] args){
        普通代码块.test();
        构造代码块.test();
    }
}

class 普通代码块{
    public static void test(){
        {
            int x=3;
            System.out.println("1,普通代码块内的变量x="+x);    
        }
    
        int x=1;
        System.out.println("主方法内的变量x="+x);
    
        {
            int y=7;
            System.out.println("2,普通代码块内的变量y="+y);    
        }
    }
}

class 构造代码块{
    {
      System.out.println("第一构造块");    
    }
    
    public 构造代码块(){
        System.out.println("构造方法");
        }
        
        {
          System.out.println("第二构造块");
        }
        
      public static void test(){
          System.out.println("main 方法内1"); 
          new 构造代码块();
          new 构造代码块();
          new 构造代码块();
          System.out.println("main 方法内2");    
    }
}    

