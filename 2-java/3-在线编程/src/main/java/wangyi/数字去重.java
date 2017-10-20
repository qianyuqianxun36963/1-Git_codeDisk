package wangyi;

import java.util.*;

/* 
 小易有一个长度为n序列，小易想移除掉里面的重复元素，但是小易想是对于每种元素保留最后出现的那个。小易遇到了困难,希望你来帮助他。 
输入描述:

输入例子1:
9
100 100 100 99 99 99 100 100 100

输出例子1:
99 100*/


public class 数字去重 {
	public static void main(String args[]){
		Scanner in = new Scanner(System.in);
		int num = in.nextInt();
		int[] sequence = new int[num];
		Map<Integer,Integer> map = new HashMap<Integer,Integer>();
		
		for(int i=0;i<num;i++){
			sequence[i] = in.nextInt();
			map.put(sequence[i],i);
		}
		
		List<Integer> list = new ArrayList<Integer>();
		for(int key:map.keySet()){
			list.add(map.get(key));
		}
		Integer[] flags = new Integer[list.size()];
		list.toArray(flags);
		Arrays.sort(list.toArray(flags));
		
		int[] results = new int[flags.length];
		for(int i=0;i<flags.length-1;i++){
			results[i] = sequence[flags[i]];
			System.out.print(results[i]+" ");
		}
		results[flags.length-1] = sequence[flags[flags.length-1]];
		System.out.println(results[flags.length-1]);
	}
}
