package java语言.b_数据.容器.数组容器;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class MyArrayList {
	public static void main(String args[]){
//		My_ArrayList.testIntArray();
//		My_ArrayList.testStringArray();
		My_ArrayList.testMapArray();
	}
}


class My_ArrayList{
	public static void testIntArray(){
		ArrayList<Integer> list = new ArrayList<Integer>();
		list.add(1);
		list.add(2);
		list.add(3);
		
		for(Object object:list){
			System.out.println(object.toString());
		}
		
		for(int i:list){
			System.out.println(i);
		}
		
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).toString());
		}
	}
	
	public static void testStringArray(){
		ArrayList<String> stringlist = new ArrayList<String>();
		stringlist.add("this ");
		stringlist.add("is ");
		stringlist.add("list.");
		
		for(Object object:stringlist){
			System.out.println(object.toString());
		}
		
		for(String str:stringlist){
			System.out.println(str);
		}
	}
	
	public static void testMapArray(){
		ArrayList<Map<String, String>> maplist = new ArrayList<Map<String, String>>();
		Map<String, String> map1 = new HashMap<String, String>();
		map1.put("name","name");
		map1.put("age","age");
		maplist.add(map1);
		
		Map<String, String> map2 = new HashMap<String, String>();
		map2.put("name","name");
		map2.put("age","age");
		maplist.add(map2);
		
		for(Object object:maplist){
			System.out.println(object.toString());
		}
		
		
		
	}
}