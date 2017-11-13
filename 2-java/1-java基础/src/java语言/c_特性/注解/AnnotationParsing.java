package java语言.c_特性.注解;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;


/*
注解的解析：

isAnnotationPresent：判断是否标注了指定注解
getAnnotation：获取指定注解，没有则返回null
getAnnotations：获取所有注解，包括继承自基类的，没有则返回长度为0的数组
getDeclaredAnnotations：获取自身显式标明的所有注解，没有则返回长度为0的数组
*/

public class AnnotationParsing {
    public static void main(String args[]){
        testSimpleAnno();
        testMethodInfo();
    }
    
    public static void testSimpleAnno(){
        try {
            for(Method m : AnnotationParsing.class
                    .getClassLoader()
                    .loadClass(("java语言.c_特性.注解.AnnotationExample"))
                    .getMethods()){
                SimpleAnnotation sa = m.getAnnotation(SimpleAnnotation.class);
                if(sa != null){
                    System.out.println("Found Use Case:" + sa.id() + " " + sa.description());
                }
            }
        } catch (SecurityException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    public static void testMethodInfo(){
        try{
            for(Method method:AnnotationParsing.class
                .getClassLoader()
                .loadClass(("java语言.c_特性.注解.AnnotationExample"))
                .getMethods()){
                if(method.isAnnotationPresent((Class<? extends Annotation>) java语言.c_特性.注解.AnnotationExample.class)){
                    try {
                        for(Annotation anno : method.getDeclaredAnnotations()){
                            System.out.println("Annotation in Method '" + method +"' :" + anno);
                        }
                        MethodInfo methodAnno = method.getAnnotation(MethodInfo.class);
                        if(methodAnno.version() == 1){
                            System.out.println("Method with version no 1 = " + method);
                        }
                    } catch (Throwable ex){
                        ex.printStackTrace();
                    }
                }
            }
        }catch(SecurityException | ClassNotFoundException e){
            e.printStackTrace();
        }
    }
}
