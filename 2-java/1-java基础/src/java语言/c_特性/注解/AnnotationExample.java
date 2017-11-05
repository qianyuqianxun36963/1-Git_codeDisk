package java”Ô—‘.c_Ãÿ–‘.◊¢Ω‚;

import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

public class AnnotationExample {
    public static void main(String args[]){
        
    }
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
