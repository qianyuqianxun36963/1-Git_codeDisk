package java����.a_��֯.a_�﷨.������;

import java.util.*;

public class For��� {
	public static void main(String args[]){
		forTestA();
		forTestB();
	}
	
	public static void forTestA(){
		for(int i=0,j=2;i<3;i++,j=8){
			System.out.println("this is "+i+" this is "+j);
		}
	}
	
	public static void forTestB(){
		List<Integer> list = new ArrayList<Integer>();
		list.add(123);
		list.add(234);
		list.add(345);
		for(int i : list){
			System.out.println("this is "+i);
		}
	}
}
