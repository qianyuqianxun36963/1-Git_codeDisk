package java语言.c_特性.注解;

import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

/*
 注解的使用
 * 
*/

@SimpleAnnotation (id = "type annotation") //类成员注解
public class AnnotationExample {
    @SimpleAnnotation(id = "firstone")  //类方法注解
    public void printFirst(){System.out.println("print first!");}
    
    @SimpleAnnotation(id = "secondone")
    public void printSecond(){System.out.println("print second!");}
    
    @Override
    @MethodInfo(author = "wangyajun",comments = "main method",date = "nov 17 2017",version =1)
    public String toString(){
        return "Overriden toString method";
    }
    @Deprecated
    @MethodInfo(comments = "deprecated method",date="nov 17 2016")
    public static void oldMethod(){
        System.out.println("old method,don't use it.");
    }
    
    @SuppressWarnings({"unchecked","deprecation"})
    @MethodInfo(author = "zhangsan",comments = "main method",date = "Nov 17 2012", version = 10)
    public static void genericsTest() throws FileNotFoundException{
        List l = new ArrayList();
        l.add("abc");
        oldMethod();
    }
}
