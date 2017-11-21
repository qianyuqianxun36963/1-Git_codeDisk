package base;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class test3 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = 0,k = 0;
        n = in.nextInt();  //n个数
        k = in.nextInt();  //每个数的范围

        Map<Integer,Integer> map = new HashMap<Integer,Integer>();
        Map<Integer,Integer> nextMap = new HashMap<Integer,Integer>();

        for(int i = 1;i<=k;i++){
            map.put(i,1);
        }

        for(int i = 1;i<n;i++){
            map = addStep(map,nextMap,k);
        }

        int sum = 0;
        for(int i = 1;i<=k;i++){
            sum += (int)map.get(i);
        }

        System.out.println(sum%1000000007);
    }

    public static Map addStep(Map map,Map nextMap,int k){
        nextMap = new HashMap();
        for(int i=1;i<=k;i++){nextMap.put(i,0);}
        for(int i=1;i<=k;i++){
            for(int j=i;j<=k;j++){
                int temp = (Integer) nextMap.get(j);
                nextMap.put(j,((Integer)map.get(i)+temp));
            }

            for(int j=i-1;j>0;j--){
                if(i%j!=0) {
                    int temp = (Integer) nextMap.get(j);
                    nextMap.put(j, ((Integer) map.get(i) + temp));
                }
            }
        }
        return nextMap;
    }
}
