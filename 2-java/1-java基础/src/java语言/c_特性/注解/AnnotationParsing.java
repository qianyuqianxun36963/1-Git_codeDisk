package java语言.c_特性.注解;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

public class AnnotationParsing {
    public static void main(String args[]){
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
