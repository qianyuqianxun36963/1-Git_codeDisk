package alibaba;

import java.util.ArrayList;
import java.util.List;

//��������
//
//��Ŀ��һ���������飬���仮��Ϊ����ͬ��4����Ƭ�����磺{ 2, 3, 5, 1, 2, 2, 1, 1, 3 }��
//��Ƭ�����󻮷�Ϊ��{2,3}��{5}��{1,2,2}��{1,1,3}��Ҳ���ҵ���ν���ĵȷֵ㡣
//ֻ����������Ϊtrue����false���Ƿ��ܵõ�������4����Ƭ����ͬʱҪ��ʱ�临�ӶȺͿռ临�Ӷ�Ϊo(n)��

public class �����Ƭ {
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
	
	//����һ��list����
	public static void visitList_every(List<?> list){
		for(Object value:list){  
	        System.out.println(value);
	    }  
	}
}
