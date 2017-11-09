package 创建型模式.原型;

import java.util.ArrayList;

public class Prototype implements Cloneable{
    public ArrayList<?> list1 = new ArrayList<Object>(); 
    public ArrayList<?> list2 = new ArrayList<Object>();
    
    public Prototype clone(){
        Prototype prototype = null;
        try{  
            prototype = (Prototype)super.clone();  
//          prototype.list1 = (ArrayList<?>) this.list1.clone(); //这里没动作，默认只进行了浅拷贝。
            prototype.list2 = (ArrayList<?>) this.list2.clone(); //这里有操作，手动进行了深拷贝。
        }catch(CloneNotSupportedException e){  
            e.printStackTrace();  
        }  
        return prototype; 
    }
}
