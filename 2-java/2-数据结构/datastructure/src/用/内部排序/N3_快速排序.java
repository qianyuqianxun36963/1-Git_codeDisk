package ��.�ڲ�����;

//���ȶ�
public class N3_�������� {
  public static void main(String[] args) {
      int[] a={49,38,65,97,76,13,27,49,78,34,12,64,1,8};
      System.out.println("����֮ǰ��");
      for (int i = 0; i < a.length; i++) {
          System.out.print(a[i]+" ");
      }
      //��������
      quick(a);
      System.out.println();
      System.out.println("����֮��");
      for (int i = 0; i < a.length; i++) {
          System.out.print(a[i]+" ");
      }
      System.out.println();
      ����.test();
  }

  private static void quick(int[] a) {
      if(a.length>0){
          quickSort(a,0,a.length-1);
      }
  }

  private static void quickSort(int[] a, int low, int high) {
      if(low<high){ //�����������жϵݹ���޷��˳����¶�ջ����쳣
          int middle = getMiddle(a,low,high);
          quickSort(a, 0, middle-1);
          quickSort(a, middle+1, high);
      }
  }

  private static int getMiddle(int[] a, int low, int high) {
      int temp = a[low];//��׼Ԫ��
      while(low<high){
          //�ҵ��Ȼ�׼Ԫ��С��Ԫ��λ��
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

//�������Լ�д�ģ��ڿ��ŵ�ʵ���У�ʹ�õĲ�������whileѭ�������Ǵ�ͷ����ı�����
class ���� {
	int[] array;

    public static void test(){
        int[] arr = {49,38,65,97,76,13,27,49,78,34,12,64,1,8};

        System.out.println("����֮ǰ��");
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i]+" ");
        }
        //��������
        quiksort(arr);
        System.out.println();
        System.out.println("����֮��");
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