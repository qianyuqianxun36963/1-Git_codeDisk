package 结构型模式.代理;

public class Client {
    public static void main(String args[]){
        I_Subject subject = new Impl_RealSubject();
        Impl_Proxy proxy = new Impl_Proxy(subject);
        proxy.operate();
    }
}
