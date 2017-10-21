package wangyi;

import java.util.Scanner;

public class ¸ÏÈ¥¹«Ë¾ {
	public static void main(String args[]){
		Scanner in = new Scanner(System.in);
		int n = in.nextInt();
		int[] cars_x = new int[n];
		int[] cars_y = new int[n];
 		for(int i=0;i<n;i++){cars_x[i] = in.nextInt();}
 		for(int i=0;i<n;i++){cars_y[i] = in.nextInt();}
 		int dest_x = in.nextInt();
 		int dest_y = in.nextInt();
 		int walkcost = in.nextInt();
 		int carcost  = in.nextInt();
 		
 		int min = 100000000;
 		int temp = 0;
 		for(int i = 0;i<n;i++){
 			temp += (cars_x[i]>0?cars_x[i]:-cars_x[i])*walkcost;
 			temp += (cars_y[i]>0?cars_y[i]:-cars_y[i])*walkcost;
 			temp += (dest_x-cars_x[i]>0?dest_x-cars_x[i]:cars_x[i]-dest_x)*carcost;
 			temp += (dest_y-cars_y[i]>0?dest_y-cars_y[i]:cars_y[i]-dest_y)*carcost;
 			if(min>temp) min = temp;
 		}
 		System.out.println(min);
	}
	
}
