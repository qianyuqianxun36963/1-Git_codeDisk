package wangyi;

import java.util.*;

/* 
 在幼儿园有n个小朋友排列为一个队伍，从左到右一个挨着一个编号为(0~n-1)。其中有一些是男生，有一些是女生，男生用'B'表示，女生用'G'表示。小朋友们都很顽皮，当一个男生挨着的是女生的时候就会发生矛盾。作为幼儿园的老师，你需要让男生挨着女生或者女生挨着男生的情况最少。你只能在原队形上进行调整，每次调整只能让相邻的两个小朋友交换位置，现在需要尽快完成队伍调整，你需要计算出最少需要调整多少次可以让上述情况最少。例如：
GGBBG -> GGBGB -> GGGBB
这样就使之前的两处男女相邻变为一处相邻，需要调整队形2次 
输入描述:
输入数据包括一个长度为n且只包含G和B的字符串.n不超过50.*/

public class 男女孩子排序 {
	public static void main(String args[]){
		Scanner in = new Scanner(System.in);
		int min_boy=0, num_boy=0;  //将男生全放在左边需要的次数
		int min_girl=0,num_girl=0; //将女生全放在左边需要的次数
		String childs = in.next();
		
		for(int i = 0;i<childs.length();i++){
			if(childs.charAt(i)=='B'){num_boy++;min_boy+=(i+1);}
			else{num_girl++;min_girl+=(i+1);}
		}
		min_boy-=(num_boy+1)*num_boy/2;
		min_girl-=(num_girl+1)*num_girl/2;
		
		if(min_boy<min_girl) System.out.println(min_boy);
		else  System.out.println(min_girl);
	}
}
