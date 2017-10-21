package 用.内部排序;

//每次选择最小(大)的数放在首(末)位，然后在对后面的数串进行同样的操作。

//不稳定
public class N2_简单选择排序 {

  public static void main(String[] args) {
      int[] a={49,38,65,97,76,13,27,49,78,34,12,64,1,8};
      System.out.println("排序之前：");
      for (int i = 0; i < a.length; i++) {
          System.out.print(a[i]+" ");
      }
      //简单的选择排序
      for (int i = 0; i < a.length; i++) {
          int min = a[i];
          int n=i; //最小数的索引 找到最小数索引，与当前搜索数串首元素a[i]对调。
          for(int j=i+1;j<a.length;j++){
              if(a[j]<min){  //找出最小的数
                  min = a[j];
                  n = j;
              }
          }
          a[n] = a[i];
          a[i] = min;
          
          System.out.print("\n排序之后：");
          for (int j = 0; j < a.length; j++) {
              System.out.print(a[j]+" ");
          }
      }

  }

}