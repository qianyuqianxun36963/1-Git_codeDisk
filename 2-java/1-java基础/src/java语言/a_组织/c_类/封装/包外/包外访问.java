package java语言.a_组织.c_类.封装.包外;

import java语言.a_组织.c_类.封装.基本父类;

public class 包外访问 {
    public static void main(String args[]){
        System.out.println("包外访问:");
        
        System.out.println("From 父类");
        基本父类 jiben = new 基本父类();
        jiben.publicfunction();
        
        System.out.println("\nFrom 子类");
        包外子类 child = new 包外子类();
        child.publicfunction();
    }
}
