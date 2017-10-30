package 创建型模式.工厂模式;


//具体产品角色
public class Impl_Broom implements I_Moveable {

 @Override
 public void run() {
     System.out.println("I'm running I'm Broom.");
 }

}