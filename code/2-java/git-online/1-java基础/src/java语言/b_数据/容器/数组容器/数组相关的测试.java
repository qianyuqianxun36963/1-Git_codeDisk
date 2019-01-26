package java语言.b_数据.容器.数组容器;

//每一行都按照从左到右递增的顺序排序，                           
//每一列都按照从上到下递增的顺序排序。
//请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。

// 如下的数组，在搜索的时候，从左下，或者右上搜索可以更快。
//    1,2,3,4,5
//    3,4,5,6,7
//    4,5,6,7,8



public class 数组相关的测试 {
    public static void main(String[] args) {
        int array[][] = {{1,2,8,9},{2,4,9,12},{4,7,10,13},{6,8,11,15}};
        int target = 7;
        boolean x = Solution.Find2(array, target);
        System.out.println(x);
    }
}


class Solution {
    //方法一：暴力遍历方法。不好。
    public static boolean Find1(int [][] array,int target) {
        for(int i = 0;i<array.length;i++)
        {
            for(int j = 0;j<array[0].length;j++)
            {
                if (array[i][j] == target) {return true;}
            }
        }
        return false;
    }
    
    //方法二：使用从左下或者右上搜索的方法。
    public static boolean Find2(int [][] array,int target) {
        int x = array.length;
        int y = array[0].length;
        int i = 0;
        int j = y-1;
        while(i<x&&j>=0){
        if(array[i][j]==target) {return true;}
        else 
            {
                if (array[i][j]<target) i++;
                else j--;
            }
        }
        return false;
    }
       
}
