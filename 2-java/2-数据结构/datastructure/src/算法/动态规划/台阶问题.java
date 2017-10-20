package 算法.动态规划;

import java.util.HashMap;
import java.util.Map;

//问题描述
//现在走一百级台阶，每次只能走一步或者两步，请问总共有多少种走法。
//下面给出了三种算法，第一种，台阶数50就够呛了。。。第二种要是不用缓存，100也不行了.
//加缓存性能有个飞跃，可以到7000阶 但是到8000就会出现堆栈溢出了。
//动态规划性能就是犯罪。。到1000000000阶都可以！

public class 台阶问题 {
	static int steps = 1000000000;
	static long temptime = 0;
	static Map results = new HashMap<Integer,Integer>();
	
	public static void main(String args[]){
		temptime = System.currentTimeMillis();
//		System.out.println("暴力递归："+getClibingWays_digui(steps)+" 用时： "+ (System.currentTimeMillis()-temptime));
		temptime = System.currentTimeMillis();
//		System.out.println("备忘算法："+getClibingWays_beiwang(steps,results)+" 用时： "+ (System.currentTimeMillis()-temptime));
		temptime = System.currentTimeMillis();
		System.out.println("线性规划："+getClibingWays_dongtai(steps)+" 用时： "+ (System.currentTimeMillis()-temptime));
	}
	
	//第一种方法，递归算法，暴力尝试。
	public static int getClibingWays_digui(int n){
		if (n  < 1){return 0;}
		if (n == 1){return 1;}
		if (n == 2){return 2;}
		return getClibingWays_digui(n-1)+getClibingWays_digui(n-2);
	}
	
	//第二种方法，采用备忘录算法，自顶而下，f(100) = f(99) + f(98); 
	//而且在递归的过程中，对于多次相同的操作-入参相同，可以使用缓存，避免重复计算。
	public static int getClibingWays_beiwang(int n,Map results){
		if (n  < 1){return 0;}
		if (n == 1){return 1;}
		if (n == 2){return 2;}
		if (results.containsKey(n)) return (int) results.get(n);
		else {
			int value = getClibingWays_beiwang(n-1,results) + getClibingWays_beiwang(n-2,results);
			results.put(n,value);
			return value;
		}
	}
	
	//第三种方法，线性规划。
	//其实每次的结果只依赖于前两次执行的结果。f(n) = f(n-1) + f(n-2)。只需要记住前两次的状态就可以。
	public static int getClibingWays_dongtai(int n){
		int oldnum=0,newnum=0,temp=0;
		for(int i=0;i<=n;i++){
			if (i  < 1){newnum = 0;}else
			if (i == 1){newnum = 1;}else
			if (i == 2){oldnum=1;newnum=2;}else{
			temp=oldnum;oldnum=newnum;newnum=temp+oldnum;}
		}
		return newnum;
	}
}



