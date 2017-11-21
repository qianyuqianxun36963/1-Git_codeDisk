package ustc.edu.wang.proxy.JDK;

import java.lang.reflect.Proxy;

public class TestJavaProxy {
    public static void main(String args[]){
        RealSubject realSubject = new RealSubject();
        Subject proxySubject = (Subject) Proxy.newProxyInstance(Subject.class.getClassLoader(),new Class[]{Subject.class},new ProxyHandler(realSubject));
        proxySubject.doSomeThing();
        proxySubject.saySomeThing();
    }
}
