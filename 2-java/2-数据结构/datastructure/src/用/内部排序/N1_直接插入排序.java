package ��.�ڲ�����;

// �����ڼҴ��Ƶ�ʱ�� ÿ���õ��ƣ��Ӻ���ǰ������С˳��嵽�Ե�λ�á�
// ÿ�δ�����ǽ��������еĵ�һ��Ԫ�����������е�Ԫ�شӺ���ǰ������бȽϣ��ҳ�����λ�ã�����Ԫ�ز��뵽�������еĺ���λ���С�
// 1,2,3|7,4,8,6; ��Ϊǰ�����򲿷ֺͺ������򲿷֡�

public class N1_ֱ�Ӳ������� {

    public static void main(String[] args) {
        int[] a={49,38,65,97,76,13,27,49,78,34,12,64,1};
        
        //insertSort(a);
        
        insertSort2(a);
    }

    
    public static void insertSort(int[] a) {
        // ����֮ǰ
    	System.out.println("����֮ǰ��");
        printPartSample(a);
     
    	//ֱ�Ӳ�������
        for (int i = 1; i < a.length; i++) {
            //������Ԫ��
            int temp = a[i];
            int j;

            for (j = i-1; j>=0; j--) {
                //������temp�������ƶ�һλ
                if(a[j]>temp){
                    a[j+1] = a[j];
                }else{
                    break;
                }
            }
            a[j+1] = temp;
        }
        
        // ����֮��
        System.out.println("����֮��");
        printPartSample(a);
    }
    
    
    public static void insertSort2(int[] list) {
        // ��ӡ��һ��Ԫ��
    	System.out.println("��һ�δ���:");
        System.out.format("i = %d:\t", 0);
        printPart(list, 0, 0);
     
        // ��1�����϶�������ģ��ӵ�2������ʼ���������β�����������
        for (int i = 1; i < list.length; i++) {
            int j = 0;
            int temp = list[i]; // ȡ����i��������ǰi-1�����ȽϺ󣬲������λ��
     
            // ��Ϊǰi-1�������Ǵ�С������������У�����ֻҪ��ǰ�Ƚϵ���(list[j])��temp�󣬾Ͱ����������һλ
            for (j = i - 1; j >= 0 && temp < list[j]; j--) {
                list[j + 1] = list[j];
            }
            list[j + 1] = temp;
     
            System.out.format("i = %d:\t", i);
            printPart(list, 0, i);
        }
    }
    
    // ��ӡ����
    public static void printPartSample(int[] list) {
    	for (int i = 0; i < list.length; i++) {
            System.out.print(list[i]+" ");
        }
    	System.out.println();
    }
    
    // ��ӡ����
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