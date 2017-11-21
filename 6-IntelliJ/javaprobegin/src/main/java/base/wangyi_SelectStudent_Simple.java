package base;

import java.sql.PseudoColumnUsage;
import java.util.Scanner;

public class wangyi_SelectStudent_Simple {
    public static void main(String args[]){
        Scanner in = new Scanner(System.in);
        int num = in.nextInt();
        int[] nums = new int[num];
        for(int i=0;i<num;i++){
            int temp = in.nextInt();
            nums[i] = temp;
        }
        int picknum = in.nextInt();
//        int[] resultnums = new int[picknum];
        int step = in.nextInt();

        Position position = new Position(0);
        int result = 1;
        for(int i=0;i<picknum;i++) {
            result *= pick(nums,position,step);
        }
        System.out.println(result);
    }
    public static int pick(int[] nums,Position positon,int step){
        int max = nums[positon.getPosition()];
        int nextposition = positon.getPosition();
        int position = positon.getPosition();
        for(int i=1;i<step;i++){
            if(i>=nums.length) break;
            if(max<nums[position+i]){
                max = nums[position+i];
                nextposition = position+i;
            }
        }
        positon.setPosition(nextposition);
        return max;
    }

    static class Position{
        Position(int position){this.position = position;}
        public int getPosition() {
            return position;
        }

        public void setPosition(int position) {
            this.position = position;
        }
        int position;
    }
}
