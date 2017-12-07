package proxy.JDK;

public class RealSubject implements Subject{
    @Override
    public void doSomeThing() {
        System.out.println("call do SomeThing");
    }

    @Override
    public void saySomeThing() {
        System.out.println("we want to say something here.");
    }
}
