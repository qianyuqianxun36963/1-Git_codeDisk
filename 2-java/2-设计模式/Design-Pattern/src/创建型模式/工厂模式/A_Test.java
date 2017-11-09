package 创建型模式.工厂模式;

public class A_Test {
    public static void main(String args[]){
        // 简单工厂模式测试      类很简单，但使用了动态类装入器，做到多样化。
        Factory_Simple simpleFactory = new Factory_Simple();
        Impl_Broom broom = (Impl_Broom) simpleFactory.create(Impl_Broom.class);//产品的具体类在这里选。
        broom.run(); //为了在这里调用不会为空，所以所有的获得的对象都实现了一个接口，这里方法都是接口中已经定义的。
        
        // 工厂方法模式测试
        Factory_Vehicle factory = new Xtd_PlaneFactory();//产品的具体类在里通过选什么工厂来实现。
        I_Moveable moveable = factory.create(); //注意!!: 看这里，是工厂的方法来实例化所需对象的!!
        moveable.run();
        
        //抽象工厂模式
        Factory_Abstract factoryA = new Xtd_ExtendFactoryA();
        I_Moveable m = factoryA.getMoveable();
        I_Writeable w = factoryA.getWriteable();
        m.run();
        w.write();
    }
}
