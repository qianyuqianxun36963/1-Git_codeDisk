package 创建型模式.原型;
//只记住一点：克隆！！clone
import java.util.ArrayList;

public class Client {
	public static void main(String[] args){  
        ConcretePrototype cp = new ConcretePrototype();  
        ArrayList<Integer> alist= new ArrayList<Integer>();
        alist.add(1);
        alist.add(2);
        cp.list1=alist;
        cp.list2=alist;
        
        ConcretePrototype clonecp = (ConcretePrototype)cp.clone(); 
        cp.list1.clear(); //clonecp浅拷贝的list1 的原型cp被清空。
        cp.list2.clear(); //clonecp深拷贝的list2 的原型cp没被清空
        for(int i=0; i< 1; i++){  
            clonecp.show();  
            cp.show();
        }  
    }  
}

/*
初始:
  原型    : cp         list1:[1,2]        list2:[1,2]
  克隆体: clonecp:   list1:[1,2](浅拷贝)  list2:[1,2](深拷贝)

清空原型后:  注意，克隆体中，浅拷贝的list1随原型一起清空，深拷贝的list2没有被清空。
  原型    : cp         list1:[]        list2:[]
  克隆体: clonecp:   list1:[](浅拷贝)  list2:[1,2](深拷贝)

 */