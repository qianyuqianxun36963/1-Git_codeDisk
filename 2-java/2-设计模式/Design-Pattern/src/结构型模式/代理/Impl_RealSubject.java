package 结构型模式.代理;

public class Impl_RealSubject implements I_Subject {
    public void operate() {
        System.out.println("Subject is doing Something!");
    }
    
    public void fun() {
        System.out.println("appended function!");
    }
}
