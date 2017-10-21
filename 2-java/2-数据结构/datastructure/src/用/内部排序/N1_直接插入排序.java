package 用.内部排序;

// 想想在家打牌的时候， 每次拿到牌，从后往前，安大小顺序插到对的位置。
// 每次处理就是将无序数列的第一个元素与有序数列的元素从后往前逐个进行比较，找出插入位置，将该元素插入到有序数列的合适位置中。
// 1,2,3|7,4,8,6; 分为前面有序部分和后面无序部分。

public class N1_直接插入排序 {

    public static void main(String[] args) {
        int[] a={49,38,65,97,76,13,27,49,78,34,12,64,1};
        
        //insertSort(a);
        
        insertSort2(a);
    }

    
    public static void insertSort(int[] a) {
        // 排序之前
    	System.out.println("排序之前：");
        printPartSample(a);
     
    	//直接插入排序
        for (int i = 1; i < a.length; i++) {
            //待插入元素
            int temp = a[i];
            int j;

            for (j = i-1; j>=0; j--) {
                //将大于temp的往后移动一位
                if(a[j]>temp){
                    a[j+1] = a[j];
                }else{
                    break;
                }
            }
            a[j+1] = temp;
        }
        
        // 排序之后
        System.out.println("排序之后：");
        printPartSample(a);
    }
    
    
    public static void insertSort2(int[] list) {
        // 打印第一个元素
    	System.out.println("另一段代码:");
        System.out.format("i = %d:\t", 0);
        printPart(list, 0, 0);
     
        // 第1个数肯定是有序的，从第2个数开始遍历，依次插入有序序列
        for (int i = 1; i < list.length; i++) {
            int j = 0;
            int temp = list[i]; // 取出第i个数，和前i-1个数比较后，插入合适位置
     
            // 因为前i-1个数都是从小到大的有序序列，所以只要当前比较的数(list[j])比temp大，就把这个数后移一位
            for (j = i - 1; j >= 0 && temp < list[j]; j--) {
                list[j + 1] = list[j];
            }
            list[j + 1] = temp;
     
            System.out.format("i = %d:\t", i);
            printPart(list, 0, i);
        }
    }
    
    // 打印序列
    public static void printPartSample(int[] list) {
    	for (int i = 0; i < list.length; i++) {
            System.out.print(list[i]+" ");
        }
    	System.out.println();
    }
    
    // 打印序列
    public static void printPart(int[] list, int begin, int end) {
        for (int i = 0; i < begin; i++) {
            System.out.print("\t");
        }
        for (int i = begin; i <= end; i++) {
            System.out.print(list[i] + "\t");
        }
        System.out.println();
    }
    
}