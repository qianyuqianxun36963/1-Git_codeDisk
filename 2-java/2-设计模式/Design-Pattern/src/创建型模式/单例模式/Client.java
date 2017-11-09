package 创建型模式.单例模式;

public class Client {
    public static void main(String args[]){
        //这个单例工厂，本身就是单例的，它只有一个实例。
        SingletonFactory singFactory = SingletonFactory.getInstance();
        singFactory.printLabel();
    }
}
