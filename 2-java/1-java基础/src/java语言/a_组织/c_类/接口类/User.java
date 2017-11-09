package java语言.a_组织.c_类.接口类;


public class User {
    public static void main(String args[]){
        I_interFace impl= new Impl_Interface();
        impl.setData(123);
        System.out.println(impl.getData());
        System.out.println(impl.getAge());
    }
}
