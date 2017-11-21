package base;

import java.util.Scanner;
import java.util.Stack;

public class wangyi_checkArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] x = new int[n];
        for(int i = 0; i < n; i++){
            x[i] = sc.nextInt();
        }

        int xiaoyi_min=0,doctor_min=0;
        Stack<Integer> xiaoyi = new Stack<Integer>();
        Stack<Integer> doctor = new Stack<Integer>();

        xiaoyi.push(x[0]);
        doctor.push(x[1]);

        for(int i = 2;i<n;i++){
            int xiaoyi_num = (xiaoyi.peek() - x[i])>0?(xiaoyi.peek() - x[i]):(x[i]-xiaoyi.peek());
            int doctor_num = (doctor.peek() - x[i])>0?(doctor.peek() - x[i]):(x[i]-doctor.peek());
            if(xiaoyi_num < doctor_num){ xiaoyi.push(x[i]); xiaoyi_min += xiaoyi_num;}
            else {doctor.push(x[i]);doctor_min += doctor_num;}
        }

        System.out.println(xiaoyi_min+doctor_min);
    }
}
