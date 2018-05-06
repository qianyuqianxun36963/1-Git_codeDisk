package java语言.a_组织.c_类.初始与清除;

public class 实例化过程 {
    public static void main(String[] args) {
        testLoad.test();
    }
}

class testLoad{
    public static void test(){
        ClassLoadProcess classload = new ClassLoadProcess();//这里执行了class的类加载时候的初始化。
        System.out.println(classload.counter1);
        System.out.println(classload.counter2);
        
        ClassLoadProcess classload2 = new ClassLoadProcess();//这里不再执行class类加载相关的初始化。
        System.out.println(classload2.counter1);
        System.out.println(classload2.counter2);
        
        ClassInstenceProcess classinstance = new ClassInstenceProcess();//这里执行了class的类加载时候的初始化。
        System.out.println(classinstance.counter1);
        System.out.println(classinstance.counter2);
        
        ClassInstenceProcess classinstance2 = new ClassInstenceProcess();//这里不再执行class类加载相关的初始化。
        System.out.println(classinstance2.counter1);
        System.out.println(classinstance2.counter2);
    }
}

//类的加载过程。
//类的静态成员初始化只在类加载的时候执行一次，后面不再执行。
class ClassLoadProcess {
//  1、初始化静态数据。
    static int counter1; //java默认会为它赋值为 0.
    static int counter2 = 0;
    
//  下面三句分别通过静态代码块、构造方法、静态方法三种方式实现静态数据的初始化。
//  这里静态数据的初始化是覆盖更新的。下面这句放到后面，会有不同效果。
    static {counter1 = 5;}
    static ClassLoadProcess sin = new ClassLoadProcess();
    static int counter3 = initcounter(counter1);

    public ClassLoadProcess() {
        System.out.println("构造方法:"+"counter1="+counter1+" ;counter2="+counter2);
        counter1++;
        counter2++;
    }
    
    public static int initcounter(int counter){return counter++;}

}

//类的实例化过程。
class ClassInstenceProcess {
//  1、初始化数据。
    int counter1; //java默认会为它赋值为 0.
    int counter2 = 0;
    
//  下面三句分别通过代码块、实例方法、【构造方法 不行！】三种方式实现静态数据的初始化。
//  这里静态数据的初始化是覆盖更新的。下面这句放到后面，会有不同效果。
    {counter1 = 5;}
//  ClassInstenceProcess sin = new ClassInstenceProcess(); //这里调用构造方法初始化属性会无限循环，发生栈溢出异常！
    int counter3 = initcounter(counter1);

    public ClassInstenceProcess() {
        System.out.println("构造方法:"+"counter1="+counter1+" ;counter2="+counter2);
        counter1++;
        counter2++;
    }
    
    public static int initcounter(int counter){return counter++;}
}

 