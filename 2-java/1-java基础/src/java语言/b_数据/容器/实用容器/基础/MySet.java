package java����.b_����.����.ʵ������.����;

import java.util.*;

public class MySet {
	public static void main(String args[]) {
		MySet_HashSet hashset = new MySet_HashSet();
		hashset.initset();
		SetUtil.visitMap_iterator(hashset.set);
		SetUtil.visitMap_iterator(hashset.objectSet);
		
		MySet_TreeSet treeset = new MySet_TreeSet();
		treeset.initset();
		SetUtil.visitMap_every(treeset.set);
		SetUtil.visitMap_every(treeset.compSet);
		
		MySet_EnumSet enumset = new MySet_EnumSet();
		enumset.initset();
		SetUtil.visitMap_iterator(enumset.set);
		SetUtil.visitMap_iterator(enumset.enumset);
	}
}

//����HashSet�ײ�ʹ����HashMapʵ�֣�ʹ���ʵ�ֹ��̱�÷ǳ��򵥣�������HashMap�Ƚ��˽⣬��ôHashSet��ֱ��С��һ����
class MySet_HashSet{
	HashSet<Object> set = new HashSet<Object>();
	HashSet<Object> objectSet = new HashSet<Object>();
	public void initset(){
		set.add(123);
		set.add("is set");
	
		B b1 = new B("tom",20,"man");
		B b2 = new B("tom",20,"man");
		B b3 = new B("tom",20,"man");
		objectSet.add(b1);
		objectSet.add(b2);
		objectSet.add(b3);
	}
}

//����TreeSet�ǻ���TreeMapʵ�ֵģ�����������Ƕ�treeMap����һ�����˽⣬��TreeSet����С��һ�������Ǵ�TreeSet�е�Դ����Կ�������ʵ�ֹ��̷ǳ��򵥣��������еķ���ʵ��ȫ�����ǻ���TreeMap�ġ�
class MySet_TreeSet{
	TreeSet<Object> set = new TreeSet<Object>();
	TreeSet<Object> compSet = new TreeSet<Object>(new A(0));
	public void initset(){
//		�����������
//		set.add(123);
//		set.add(345);
	
//		�������Ҳ����
//		set.add("a");
//		set.add("b");
		
//		�������������  ��Ϊtreeset���Ԫ��Ҫ����������Ҫ�Ƚϡ�
//		set.add(123);
//		set.add("b");
		
		A a1 = new A(111);
		A a2 = new A(222);
		compSet.add(a1);
		compSet.add(a2);
	}
}


class MySet_EnumSet{
	enum Season {  SPRING, SUMMER, FALL, WINNTER }  
	
	EnumSet<?> set;
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void initset(){
		List<Object> li = new ArrayList<>();  
        li.add(Season.SPRING);  
        li.add(Season.SPRING);  
        li.add(Season.SUMMER);  
        set = EnumSet.copyOf((Collection)li);  
        //System.out.println(set); // [SPRING, SUMMER]  
	}
	
	EnumSet<?> enumset = EnumSet.of(Season.SPRING,Season.WINNTER);
}

class SetUtil{
	//����һ��set����
	public static void visitMap_every(Set<?> set){
		for(Object value:set){  
	        System.out.println(value);
//	        System.out.println(((A)value).flag);
	    }
	}
	
	//����һ��set����
	public static void visitMap_iterator(Set<?> set){
		Iterator<?> it = set.iterator();  
		while(it.hasNext()){  
			System.out.println(it.next());
		}
	}
	
	// �������TreeSet
	public static void descIteratorThroughIterator(TreeSet<?> set) {
		for(Iterator<?> iter = set.descendingIterator(); iter.hasNext(); )
		System.out.printf("desc : %s\n", (String)iter.next());
	}
}

class A implements Comparator<Object>{
	public int flag;
	public A(int flag){
		this.flag = flag;
	}
	@Override
	public int compare(Object arg0, Object arg1) {
		A a0 = (A)arg0;
		A a1 = (A)arg1;
		if(a0.flag<a1.flag) return -1;
		else if(a0.flag==a1.flag) return 0;
		else return 1;
	}
}

//��set�м���Ķ���ʵ������Ҫ��д����дhashCode��equals������
class B{
	String name;int age;String sex;
	public B(String name,int age,String sex){
		this.name = name;this.age=age;this.sex=sex;
	}
	public String toString(){
		return this.name+this.age+this.sex;
	}
	public int hashCode(){return this.name.hashCode() + this.age + this.sex.hashCode();}
	public boolean equals(Object obj){
		if(!(obj instanceof B)) throw new ClassCastException("type does not match");
		B b = (B) obj;
		return(this.name.equals(b.name)&&this.age==b.age&&this.sex.equals(b.sex));
	}
}