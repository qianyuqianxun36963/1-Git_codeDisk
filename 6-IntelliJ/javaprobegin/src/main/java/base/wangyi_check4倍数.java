package base;

import java.util.Scanner;

public class wangyi_check4±¶Êý {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        boolean[] result = new boolean[n];
        boolean res = true;

        for(int i = 0; i < n; i++){
            int lentgth = sc.nextInt();
            int[] array = new int[lentgth];
            for(int j = 0; j < lentgth; j++){
                array[j] = sc.nextInt();
            }
            if(!cheacArray(array,lentgth)) System.out.println("No");
            else  System.out.println("Yes");

        }

    }

    public static boolean cheacArray(int[] array,int length){
        int num = 0;
        for(int i=0;i<length;i++){
            if(array[i]%2!=0){num++;};
        }
        if(num>length/2||(num==length/2&&length%2==0)) return false;
        else return true;
    }
}
