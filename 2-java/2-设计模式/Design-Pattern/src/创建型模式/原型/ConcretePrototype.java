package ������ģʽ.ԭ��;

public class ConcretePrototype extends Prototype{  
    public void show(){  
        System.out.println("ԭ��ģʽʵ����");  
        for(Object i:list1){
        	System.out.println("list1: "+i);
        }
        for(Object i:list2){
        	System.out.println("list2: "+i);
        }
    }  
}
