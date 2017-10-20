package 用.内部排序;

//不稳定
public class N3_快速排序 {
  public static void main(String[] args) {
      int[] a={49,38,65,97,76,13,27,49,78,34,12,64,1,8};
      System.out.println("排序之前：");
      for (int i = 0; i < a.length; i++) {
          System.out.print(a[i]+" ");
      }
      //快速排序
      quick(a);
      System.out.println();
      System.out.println("排序之后：");
      for (int i = 0; i < a.length; i++) {
          System.out.print(a[i]+" ");
      }
      System.out.println();
      快排.test();
  }

  private static void quick(int[] a) {
      if(a.length>0){
          quickSort(a,0,a.length-1);
      }
  }

  private static void quickSort(int[] a, int low, int high) {
      if(low<high){ //如果不加这个判断递归会无法退出导致堆栈溢出异常
          int middle = getMiddle(a,low,high);
          quickSort(a, 0, middle-1);
          quickSort(a, middle+1, high);
      }
  }

  private static int getMiddle(int[] a, int low, int high) {
      int temp = a[low];//基准元素
      while(low<high){
          //找到比基准元素小的元素位置
          while(low<high && a[high]>=temp){
              high--;
          }
          a[low] = a[high]; 
          while(low<high && a[low]<=temp){
              low++;
          }
          a[high] = a[low];
      }
      a[low] = temp;
      return low;
  }
}

//下面是自己写的，在快排的实现中，使用的不是两个while循环，而是从头到后的遍历。
class 快排 {
	int[] array;

    public static void test(){
        int[] arr = {49,38,65,97,76,13,27,49,78,34,12,64,1,8};

        System.out.println("排序之前：");
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i]+" ");
        }
        //快速排序
        quiksort(arr);
        System.out.println();
        System.out.println("排序之后：");
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i]+" ");
        }
        System.out.println();
    }

    public static void quiksort(int[] arr){
    	if(arr.length>1){
    		sort(arr, 0, arr.length-1);
    	}
    }
    
    public static void sort(int[] arr,int begin,int end){
        int mid = fastsort(arr,begin,end);
        if(mid > begin+1) sort(arr,0,mid-1);
        if(mid < end-1) sort(arr,mid+1,end);
    }

	public static int fastsort(int[] arr,int begin,int end){
        int std = arr[begin];
        while(begin<end){
            if(arr[begin+1]>std) {
            	while(arr[end]>std&&end>begin+1){end--;}
            	int temp =arr[begin+1];arr[begin+1]=arr[end];arr[end]=temp;end--;}
            else {arr[begin] = arr[begin+1];begin++;}
        }
        arr[begin] = std;
        return begin;
	}
}