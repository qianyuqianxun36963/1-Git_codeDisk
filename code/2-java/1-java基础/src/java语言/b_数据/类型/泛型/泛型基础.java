package java语言.b_数据.类型.泛型;

import java.util.ArrayList;
import java.util.List;

public class 泛型基础 {
     @SuppressWarnings({ })
     public static void main(String[] args) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
         泛型类.test();
         泛型方法.test();
         泛型接口.test();
     }
}

/****** 泛型类 ******/

    //泛型类，是在实例化类的时候指明泛型的具体类型;泛型方法，是在调用方法的时候指明泛型的具体类型。
    //泛型类的声明：
    //class A<D>  A是泛型类的名称，D是其中的泛型。我们没有指定E是何种类型，就是说，它可以是任何对象或接口，但不能是基本类型。
    class 泛型类<T> {
        
        private T data;

        public static void test(){
            泛型类.textself();
            引例.test();
             泛型和子类型.test();
             通配符.test();
        }
        
        public 泛型类() {

        }

        public 泛型类(T data) {
            setData(data);
        }

        public T getData() {
            return data;
        }

        public void setData(T data) {
            this.data = data;
        }
        
        public static void textself(){
             泛型类<String> x = new 泛型类<String>();
             x.setData("这里是泛型类自测试。");
             System.out.println(x.getData());
        }

    }

    class 引例{
        @SuppressWarnings({ "rawtypes", "unchecked" })
        public static void test(){
            //List<Object> list = new ArrayList();
            List list = new ArrayList(); //这句跟上面那句是一样的。list默认的类型为Object类型。
            list.add(123.123);
            list.add("234");
            list.add(100);
            for (int i = 0; i < list.size(); i++) {
                Object name =  list.get(i); // 1
                System.out.println("name:" + name);
            }
        }
    }

    class 泛型和子类型{
        public static void test(){
            /**验证继承关系。泛型类<Integer> 不能赋值给  泛型类<Number> *********************/
            /**Number是Integer的父类，但泛型类<Number>不是泛型类<Integer>的父类 ************/
            /**泛型类<?>在逻辑上是泛型类<Integer>、泛型类<Number>...等所有泛型类<具体类型实参>的父类**/
                                泛型类<Number> name = new 泛型类<Number>(99);
            @SuppressWarnings("unused")
            泛型类<Integer> age = new 泛型类<Integer>(712);

//            getData(name);
            getData(age);  //这个是报错的:"The method getData(泛型类<Number>) in the type 泛型基础 is not applicable for the arguments (泛型类<Integer>)";
        }
        
        public static void getData(泛型类<Integer> data){
             System.out.println("data :" + data.getData());
        }
    }

    class 通配符{
        public static void test(){
            泛型类<String> name = new 泛型类<String>("corn");
            泛型类<Integer> age = new 泛型类<Integer>(712);
               泛型类<Number> number = new 泛型类<Number>(314);

            getData(name);
            getData(age);
            getData(number);
            
//            getUpperNumberData(name); // 1
            getUpperNumberData(age);    // 2
            getUpperNumberData(number); // 3
            
//            getDownNumberData(name); // 1
//            getDownNumberData(age);    // 2
            getDownNumberData(number); // 3
        }
        
        //泛型类<?>在逻辑上是泛型类<Integer>、泛型类<Number>...等所有泛型类<具体类型实参>的父类。
        public static void getData(泛型类<?> data) {
            System.out.println("data :" + data.getData());
        }
        
        //对类型实参又有进一步的限制：只能是Number类及其子类。此时，需要用到类型通配符上限。
        public static void getUpperNumberData(泛型类<? extends Number> data){
            System.out.println("data :" + data.getData());
        }
        
        //对类型实参又有进一步的限制：只能是Number类及其父类。此时，需要用到类型通配符下限。
        public static void getDownNumberData(泛型类<? super Number> data){
            System.out.println("data :" + data.getData());
        }
        
    }

/****** 泛型方法 ******/

    //泛型类，是在实例化类的时候指明泛型的具体类型;泛型方法，是在调用方法的时候指明泛型的具体类型。
    //泛型方法的定义范围[public、private...等] 方法泛型申明[<T>、<E、F>...之类允许多余] 返回类型[T、int、void..。等] 函数名[get、set...] [(参数列表,类型可以是T、int、String...等)] 
    class 泛型方法{
        public int number=123;
        private String num="234";
        
        @SuppressWarnings("unchecked")
        public static void test() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
            泛型方法   test=new 泛型方法();
            Object obj= test.getobject(Class.forName("java语言.b_数据.类型.泛型.泛型方法"));
            System.out.println(obj.getClass());
            
            泛型方法  testobj=(泛型方法) test.getobject(Class.forName("java语言.b_数据.类型.泛型.泛型方法"));
            System.out.println(testobj.number);
            System.out.println(testobj.num);
            
            out("findingsea");
            out(123);
            out(11.11);
            out(true);
            
            out(123,356);
            
            out("findingsea", 123, 11.11, true,123,356);
            
            display(123);
            display("123");
            display(123f);
        }
        
        //泛型方法的定义： 范围[public、private...等] 方法泛型申明[<T>、<E、F>...之类允许多余] 返回类型[T、int、void..。等] 函数名[get、set...] [(参数列表,类型可以是T、int、String...等)] 
        public <T> T getobject(Class<T> c) throws InstantiationException,IllegalAccessException{
            //创建泛型对象
            T t =c.newInstance();
            return t;
        }
        
        //无论何时，只要你能做到，你就应该尽量使用泛型方法。可以看到方法的参数彻底泛化了，这个过程涉及到编译器的类型推导和自动打包，也就说原来需要我们自己对类型进行的判断和处理，现在编译器帮我们做了。这样在定义方法的时候不必考虑以后到底需要处理哪些类型的参数，大大增加了编程的灵活性。
        public static <T> void out(T t) {
            System.out.println(t+"; ");
        }
        
        //'方法泛型申明'和'参数列表'允许冗余。
        public static <T,E> void out(T t,int i,String s) {
            System.out.println(t+" "+i);
        }
        
        @SuppressWarnings("unchecked")
        public static <T> void out(T... args) {
            for (T t : args) {
                System.out.print(t+"; ");
            }
            System.out.println("");
        }
        
        public static <T> void display(T t) {
            System.out.println(t.getClass());
        }
    }


//泛型接口
    class 泛型接口{
        public static void test(){
            Inter<String> in = new InterImpl<String>(); //实例化
            in.show("hahah");
        }
    }

    interface Inter<T> {
        abstract void show(T t);
    }
    //实现接口
    class InterImpl<T> implements Inter<T> {
        @Override
        public void show(T t) {
        // TODO 自动生成的方法存根
        System.out.println(t);
        }
    }
