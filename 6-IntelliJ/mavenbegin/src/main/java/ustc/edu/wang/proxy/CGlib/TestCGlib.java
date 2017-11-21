package ustc.edu.wang.proxy.CGlib;

public class TestCGlib {
    public static void main(String[] args) {
        CglibProxy proxy = new CglibProxy();
        //通过生成子类的方式创建代理类
        Subject proxyImp = (Subject)proxy.getProxy(Subject.class);
        proxyImp.say();
    }
}
