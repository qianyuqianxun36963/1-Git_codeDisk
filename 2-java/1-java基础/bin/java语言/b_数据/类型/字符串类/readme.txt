先把几个知识点列出来：

值传递：

当基本类型作为参数传入方法时，无论该参数在方法内怎样被改变，外部的变量原型总是不变的。

引用传递：

当方法传入的参数为引用数据类型(类、接口、数组)时， 方法改变参数变量的同时变量原型也会随之改变。

那如果传入的参数如果是String呢，这时候就要注意了，通常我们认为的几种情况：

结果和String的赋值方式有关系：直接赋值和对象赋值。

结果和String的变值方式有关系：“=”变值与方法变值。

public static void main(String[] args) {
        String one = "Test one";//直接赋值
        String two = new String("Test two");//对象赋值
        changeString(one);
        changeString(two);
        System.out.println(one);
        System.out.println(two);
        changeStringOfConcat(one);
        changeStringOfConcat(two);
        System.out.println(one);
        System.out.println(two);
    }
     
    public static void changeString(String original){
        original = original + " is changed !";//"="变值
        System.out.println("The changed inner String: " + original);
    }
     
    public static void changeStringOfConcat(String original){
        original = original.concat(" is changed of concat !");//方法变值
        System.out.println("The changed inner String: " + original);
    }
输出结果：

        The changed inner String: Test one is changed !

        The changed inner String: Test two is changed !

        Test one

        Test two

        The changed inner String: Test one is changed of concat !

        The changed inner String: Test two is changed of concat !

        Test one

        Test two

从结果来看我们发现之前认为的几种都是错误的。

其实，要想真正理解一个类或者一个API/框架的最直接的方法就是看源码，现在我看String类的构造函数

    public String() {
        this.value = new char[0];
    }
 
    public String(String original) {
        this.value = original.value;
        this.hash = original.hash;
    }
从中不难发现String实际是通过char[]来储存的。

String就相当于是char[]的包装类。包装类的特质之一就是在对其值进行操作时会体现出其对应的基本类型的性质。