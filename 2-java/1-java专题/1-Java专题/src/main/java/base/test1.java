package base;

import java.util.Scanner;

public class test1
{
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int x = 0,f = 0,d = 0,p = 0;
        x = in.nextInt();  //ÿ�췿��
        f = in.nextInt();  //����ˮ��
        d = in.nextInt();  //���е�Ǯ
        p = in.nextInt();  //ˮ���ۼ�

        int days = 0;
        if(d - (f*x)<0) days = (d/x);
        else{
            int m = d - (f*x);
            days = f+(m/(p+x));
        }
        System.out.println(days);
    }
}
