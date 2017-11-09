package 创建型模式.原型;

public class ConcretePrototype extends Prototype{  
    public void show(){  
        System.out.println("原型模式实现类");  
        for(Object i:list1){
            System.out.println("list1: "+i);
        }
        for(Object i:list2){
            System.out.println("list2: "+i);
        }
    }  
}
