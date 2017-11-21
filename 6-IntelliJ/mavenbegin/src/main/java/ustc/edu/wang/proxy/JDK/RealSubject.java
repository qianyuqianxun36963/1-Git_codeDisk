package ustc.edu.wang.proxy.JDK;

public class RealSubject implements Subject{
    public void doSomeThing() {
        System.out.println("call do SomeThing");
    }
    public void saySomeThing() {
        System.out.println("we want to say something here.");
    }
}
