package alibaba;

import java.util.ArrayList;
import java.util.List;

//问题描述
//
//题目：一个整型数组，将其划分为和相同的4个切片，例如：{ 2, 3, 5, 1, 2, 2, 1, 1, 3 }，
//切片操作后划分为：{2,3}，{5}，{1,2,2}，{1,1,3}，也就找到所谓的四等分点。
//只不过输出结果为true或者false（是否能得到这样的4个切片）。同时要求时间复杂度和空间复杂度为o(n)。

public class 数组分片 {
	public static void main(String args[]){
		int[] array = { 2, 3, 5, 1, 2, 2, 1, 1, 3 };
		ArrayList<ArrayList<Integer>>results = new ArrayList<ArrayList<Integer>>();
		boolean resultboolean = getpieces(array,results);
		System.out.println(resultboolean);
		visitList_every(results);
	}
	
	public static boolean getpieces(int[] array,ArrayList<ArrayList<Integer>> results){
		if(array.length < 4) return false;
		int sum = 0;
		for(int i : array){
			sum = sum + i ;
		}
		if(0!=sum%4) return false;
		int average = sum/4;
		int j = 0;
		int temp = 0;
		ArrayList<Integer> result = new ArrayList<Integer>();
		for(int i : array){
			if(temp < average){
				temp = temp + i;
				if (temp > average) return false;
				else{result.add(i);
					if(temp == average){j++;temp=0;results.add((ArrayList<Integer>) result.clone());result.clear();}
//					if(temp == average){j++;temp=0;results.add(result);result = new ArrayList<Integer>();}
				}
			}
		}
		return true;
	}
	
	//遍历一个list对象。
	public static void visitList_every(List<?> list){
		for(Object value:list){  
	        System.out.println(value);
	    }  
	}
}
