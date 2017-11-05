package java����.c_����.ע��;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

public class AnnotationParsing {
    public static void main(String args[]){
        try{
            for(Method method:AnnotationParsing.class
                .getClassLoader()
                .loadClass(("java����.c_����.ע��.AnnotationExample"))
                .getMethods()){
                if(method.isAnnotationPresent((Class<? extends Annotation>) java����.c_����.ע��.AnnotationExample.class)){
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
