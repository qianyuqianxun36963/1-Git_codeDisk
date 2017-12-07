package base;

import java.util.Scanner;

public class test1
{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int x = 0,f = 0,d = 0,p = 0;
        x = in.nextInt();  //每天房租
        f = in.nextInt();  //已有水果
        d = in.nextInt();  //已有的钱
        p = in.nextInt();  //水果售价

        int days = 0;
        if(d - (f*x)<0) days = (d/x);
        else{
            int m = d - (f*x);
            days = f+(m/(p+x));
        }
        System.out.println(days);
    }
}
