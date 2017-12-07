package base;

import java.util.*;


public class test2 {
    public static void main(String args[]){

        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int result = 0;
        while(n>0){
            if(n%2==1){result=(result*10)+1;n=(n-1)/2;}
            else{result=result*10+2;n=(n-2)/2;}
        }
        System.out.println(result);
    }
}
