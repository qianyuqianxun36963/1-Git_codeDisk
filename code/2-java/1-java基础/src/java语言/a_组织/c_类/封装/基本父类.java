package java语言.a_组织.c_类.封装;

public class 基本父类{
    public void publicfunction(){System.out.println("this is public function");}
    protected void protectedfunction(){System.out.println("this is protected function");}
//    不加访问修饰词的成员变量和成员方法称为友好变量和友好方法。同一个包中的类可以访问之，包外的类即使import了它所在的包，也不能访问之。
    void packagefunction(){System.out.println("this is package function");}
    private void privatefunction(){System.out.println("this is private function");}

    public static void func(){
        基本父类 jiben = new 基本父类();
        jiben.publicfunction();
        jiben.packagefunction();
        jiben.protectedfunction();
        jiben.privatefunction(); //private方法仅在定义该方法的类本身里面进行访问。
    }
}
