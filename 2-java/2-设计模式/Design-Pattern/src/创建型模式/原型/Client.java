package ������ģʽ.ԭ��;
//ֻ��סһ�㣺��¡����clone
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
        cp.list1.clear(); //clonecpǳ������list1 ��ԭ��cp����ա�
        cp.list2.clear(); //clonecp�����list2 ��ԭ��cpû�����
        for(int i=0; i< 1; i++){  
            clonecp.show();  
            cp.show();
        }  
    }  
}

/*
��ʼ:
  ԭ��    : cp         list1:[1,2]        list2:[1,2]
  ��¡��: clonecp:   list1:[1,2](ǳ����)  list2:[1,2](���)

���ԭ�ͺ�:  ע�⣬��¡���У�ǳ������list1��ԭ��һ����գ������list2û�б���ա�
  ԭ��    : cp         list1:[]        list2:[]
  ��¡��: clonecp:   list1:[](ǳ����)  list2:[1,2](���)

 */