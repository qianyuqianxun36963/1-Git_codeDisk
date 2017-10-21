package wangyi;

import java.util.Arrays;
import java.util.Scanner;



public class 线程配置 {
	public static void main(String[] args){
//        int n = 5;
//        int[] nums = {3072,3072,7168,3072,1024};
        int n =10;
        int[] nums = {1411072,2110464,1388544,2362368,1103872,59392,133120,1184768,1500160,1332224};
//        Scanner scanner = new Scanner(System.in);
//        int n = 0;
//        int[] nums = {};
//        while(scanner.hasNext()){
//            n = scanner.nextInt();//任务个数
//            nums = new int[n];//任务队列 
//            for(int i = 0; i < n; i++){
//                nums[i] = scanner.nextInt();
//            }
//        }

        Arrays.sort(nums);
        int sum1=nums[n-1];
        int sum2=nums[n-2];
        for(int i=n-3;i>=0;i--){
            if(sum1<sum2)
                {sum1+=nums[i];} 
            else {sum2+=nums[i];}
        }
        if (sum1>sum2) System.out.println(sum1);
        else System.out.println(sum2);
    }
}
