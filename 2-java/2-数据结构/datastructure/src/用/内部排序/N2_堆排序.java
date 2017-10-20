package 用.内部排序;

//堆是一棵顺序存储的完全二叉树。
//其中每个结点的关键字都不大于其孩子结点的关键字，这样的堆称为小根堆。
//其中每个结点的关键字都不小于其孩子结点的关键字，这样的堆称为大根堆。
//堆排序思想可归纳为两个操作：
//（1）根据初始数组去构造初始堆（构建一个完全二叉树，保证所有的父结点都比它的孩子结点数值大）。
//（2）每次交换第一个和最后一个元素，输出最后一个元素（最大值），然后把剩下元素重新调整为大根堆。

//不稳定
import java.util.Arrays;

public class N2_堆排序 {
  public static void main(String[] args) {
      int[] a={49,38,65,97,76,13,27,49,78,34,12,64};
      int arrayLength=a.length;  
      //循环建堆  
      for(int i=0;i<arrayLength-1;i++){  
          //建堆  
          buildMaxHeap(a,arrayLength-1-i);  
          //交换堆顶和最后一个元素  
          swap(a,0,arrayLength-1-i);  
          System.out.println(Arrays.toString(a));  
      }  
  }
  //对data数组从0到lastIndex建大顶堆
  public static void buildMaxHeap(int[] data, int lastIndex){
       //从lastIndex处节点（最后一个节点）的父节点开始 
      for(int i=(lastIndex-1)/2;i>=0;i--){
          //k保存正在判断的节点 
          int k=i;
          //如果当前k节点的子节点存在  
          while(k*2+1<=lastIndex){
              //k节点的左子节点的索引 
              int biggerIndex=2*k+1;
              //如果biggerIndex小于lastIndex，即biggerIndex+1代表的k节点的右子节点存在
              if(biggerIndex<lastIndex){  
                  //若果右子节点的值较大  
                  if(data[biggerIndex]<data[biggerIndex+1]){  
                      //biggerIndex总是记录较大子节点的索引  
                      biggerIndex++;  
                  }  
              }  
              //如果k节点的值小于其较大的子节点的值  
              if(data[k]<data[biggerIndex]){  
                  //交换他们  
                  swap(data,k,biggerIndex);  
                  //将biggerIndex赋予k，开始while循环的下一次循环，重新保证k节点的值大于其左右子节点的值  
                  k=biggerIndex;  
              }else{  
                  break;  
              }  
          }
      }
  }
  //交换
  private static void swap(int[] data, int i, int j) {  
      int tmp=data[i];  
      data[i]=data[j];  
      data[j]=tmp;  
  } 
}