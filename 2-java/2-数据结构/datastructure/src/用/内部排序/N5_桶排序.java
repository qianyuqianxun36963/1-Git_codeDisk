package ��.�ڲ�����;
//Ͱ����(Bucket Sort)��ԭ��ܼ򵥣����ǽ�����ֵ�����������Ͱ���
//
//��������������a�й���N��������������֪����a�����ݵķ�Χ[0, MAX)����Ͱ����ʱ����������ΪMAX��Ͱ����r������Ͱ����Ԫ�ض���ʼ��Ϊ0��������ΪMAX��Ͱ�����е�ÿһ����Ԫ������һ��"Ͱ"��
//������ʱ�������������a��������a��ֵ����Ϊ"Ͱ����r"���±ꡣ��a�����ݱ���ȡʱ���ͽ�Ͱ��ֵ��1�����磬��ȡ������a[3]=5����r[5]��ֵ+1��
public class N5_Ͱ���� {
	/*
	 * Ͱ����
	 *
	 * ����˵����
	 *     a -- ����������
	 *     max -- ����a�����ֵ�ķ�Χ
	 */
	public static void bucketSort(int[] a, int max) {
	    int[] buckets;
	    if (a==null || max<1)
	        return ;
	    // ����һ������Ϊmax������buckets�����ҽ�buckets�е��������ݶ���ʼ��Ϊ0��
	    buckets = new int[max];
	    // 1. ����
	    for(int i = 0; i < a.length; i++) 
	        buckets[a[i]]++; 
	    // 2. ����
	    for (int i = 0, j = 0; i < max; i++) {
	        while( (buckets[i]--) >0 ) {
	            a[j++] = i;
	        }
	    }
	    buckets = null;
	}
	public static void main(String[] args) {
	    int i;
	    int a[] = {8,2,3,4,3,6,6,3,9};
	    System.out.printf("before sort:");
	    for (i=0; i<a.length; i++)
	        System.out.printf("%d ", a[i]);
	    System.out.printf("\n");
	    bucketSort(a, 10); // Ͱ����
	    System.out.printf("after  sort:");
	    for (i=0; i<a.length; i++)
	        System.out.printf("%d ", a[i]);
	    System.out.printf("\n");
	}
}
