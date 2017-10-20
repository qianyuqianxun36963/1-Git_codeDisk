package ������ģʽ.ԭ��;

import java.util.ArrayList;

public class Prototype implements Cloneable{
	public ArrayList<?> list1 = new ArrayList<Object>(); 
	public ArrayList<?> list2 = new ArrayList<Object>();
	
	public Prototype clone(){
		Prototype prototype = null;
		try{  
            prototype = (Prototype)super.clone();  
//          prototype.list1 = (ArrayList<?>) this.list1.clone(); //����û������Ĭ��ֻ������ǳ������
            prototype.list2 = (ArrayList<?>) this.list2.clone(); //�����в������ֶ������������
        }catch(CloneNotSupportedException e){  
            e.printStackTrace();  
        }  
        return prototype; 
	}
}
