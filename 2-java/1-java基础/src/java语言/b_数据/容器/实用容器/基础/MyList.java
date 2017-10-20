package java����.b_����.����.ʵ������.����;

import java.util.*;

import org.junit.Test;

import java����.b_����.����.ʵ������.Mydata;

//��ʵ��ʹ���г���Ҫ��ʼ��һ��list�ȣ�����ʹ��Collections.addAll()�ܷ��㡣���磺
//sk = new Stack<String>();
//Collections.addAll(sk, "one","two","three","four","five","six");

public class MyList {
	@Test
	public void test() {
		MyList_Arraylist arraylist = new MyList_Arraylist();
		arraylist.initlist();
		ListUtil.visitList_for((arraylist.arraylist));
		ListUtil.visitList_every((arraylist.arraylist));
		ListUtil.visitList_iterator((arraylist.arraylist));
		
		MyList_Linkedlist linklist = new MyList_Linkedlist();
		linklist.initlist();
		linklist.printself();
		ListUtil.visitList_for(linklist.linklist);
		ListUtil.visitList_iterator(linklist.linklist);
		
		Mylist_Vector vec = new Mylist_Vector();
		vec.initlist();
		vec.printself();
		ListUtil.visitList_every(vec.vec);
		ListUtil.visitList_Enumeration(vec.vec);
		
		Mylist_Stack sk = new Mylist_Stack();
		sk.initlist();
		ListUtil.visitList_for(sk.sk);
		ListUtil.visitList_Enumeration(sk.sk);
		sk.printSelf();
	}
}

class MyList_Arraylist {
	public ArrayList<Object> arraylist = new ArrayList<Object>();
	void initlist(){
		arraylist.add("�ַ���");
		arraylist.add(520);
	    Mydata mydate=new Mydata(100,"wang");
	    arraylist.add(mydate);
	}
}

class MyList_Linkedlist {
	public LinkedList<Object> linklist = new LinkedList<Object>();
	
	void initlist(){
		linklist.add("�ַ���");
		linklist.add(520);
	    Mydata mydate=new Mydata(100,"wang");
	    linklist.add(mydate);
	}	
	
	void printself(){
		System.out.println("�ַ���"+(String)linklist.get(0)+"��������"+(int)linklist.get(1)+"��������"+((Mydata)linklist.get(2)).toString());
	}
}

class Mylist_Vector{
	Vector<Object> vec = new Vector<Object>(3, 2);
	public void initlist(){
		vec.addElement(new Integer(1));
	    vec.add(123);
	    vec.add("234");
	}
	void printself(){
		Enumeration<?> enu = vec.elements();  
	    while (enu.hasMoreElements()) {  
	        Object value = (Object)enu.nextElement();  
	        System.out.println(value);
	    }  
	}
}


class Mylist_Stack{
	Stack<String> sk;
	
	public void initlist(){
		sk = new Stack<String>();
		sk.push(" stack");
		sk.push(" is");
		sk.push("this");
		
        Collections.addAll(sk, "one","two","three","four","five","six");
	}
	
	public void printSelf(){
		StringBuffer sb = new StringBuffer();
		while(!sk.isEmpty()){
			sb.append(sk.pop());
		}
		System.out.println(sb.toString());
	}
}

class ListUtil{
	//����һ��list����
	public static void visitList_for(List<?> list){
		for(int i = 0 ; i < list.size() ; i++){  
	        System.out.println(list.get(i));
	    }  
	}
	
	//����һ��list����
	public static void visitList_every(List<?> list){
		for(Object value:list){  
	        System.out.println(value);
	    }  
	}
	
	//����һ��list����
	public static void visitList_iterator(List<?> list){
		Iterator<?> it = list.iterator();  
		while(it.hasNext()){  
			System.out.println(it.next());
		}
	}
	
	//����һ��list����	Enumerationѭ�� ����ֻ��vector��������ǳɹ��ġ���Ķ�û�ɹ���
	public static void visitList_Enumeration(List<?> list){
		@SuppressWarnings("unchecked")
		Enumeration<?> enu = ((Vector<Object>) list).elements();  
	    while (enu.hasMoreElements()) {  
	        Object value = (Object)enu.nextElement();  
	        System.out.println(value);
	    }  
	}
}
