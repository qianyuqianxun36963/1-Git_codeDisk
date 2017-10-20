package huawei;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class 去重和统计 {
	public static void main(String[] args){
        Scanner s = new Scanner(System.in);
            int count  = s.nextInt();
            int[] nums = new int[count];
            for(int i=0;i<count;i++){
                nums[i] = s.nextInt();
            }
        Integer[] results = getSortedNums(count,nums);
        for(int i = 0;i<results.length;i++)
        System.out.println(results[i]);
    }
	
	public static Integer[] getSortedNums(int n,int[] nums){
        Set<Integer> set = new HashSet<Integer>();
		for(int i=0;i<n;i++){
            set.add(nums[i]);
        }
		Integer[] results = new Integer[set.size()];
        set.toArray(results);
        Arrays.sort(results);
        return results;
	}
}
