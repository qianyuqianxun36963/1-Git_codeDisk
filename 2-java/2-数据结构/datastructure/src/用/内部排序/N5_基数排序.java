package ��.�ڲ�����;

import java.util.ArrayList;
import java.util.List;
//��������(Radix Sort)��Ͱ�������չ�����Ļ���˼���ǣ���������λ���и�ɲ�ͬ�����֣�Ȼ��ÿ��λ���ֱ�Ƚϡ�
//���������ǣ������д��Ƚ���ֵͳһΪͬ������λ���ȣ���λ�϶̵���ǰ�油�㡣Ȼ�󣬴����λ��ʼ�����ν���һ���������������λ����һֱ�����λ��������Ժ�, ���оͱ��һ���������С�
//�ȶ�
public class N5_�������� {
    public static void main(String[] args) {
        int[] a={49,38,65,97,176,213,227,49,78,34,12,164,11,18,1};
        System.out.println("����֮ǰ��");
        for (int i = 0; i < a.length; i++) {
            System.out.print(a[i]+" ");
        }
        //��������
        sort(a);
        System.out.println();
        System.out.println("����֮��");
        for (int i = 0; i < a.length; i++) {
            System.out.print(a[i]+" ");
        }
    }

    @SuppressWarnings({ "rawtypes", "unchecked" })
	private static void sort(int[] array) {
        //�ҵ��������ȷ��Ҫ������
        int max = 0;
        for (int i = 0; i < array.length; i++) {
            if(max<array[i]){
                max = array[i];
            }
        }
        //�ж�λ��
        int times = 0;
        while(max>0){
            max = max/10;
            times++;
        }
        //����ʮ������
		List<ArrayList> queue = new ArrayList<ArrayList>();
        for (int i = 0; i < 10; i++) {
			ArrayList queue1 = new ArrayList();
            queue.add(queue1);
        }
        //����times�η�����ռ�
        for (int i = 0; i < times; i++) {
            //����
            for (int j = 0; j < array.length; j++) {
                int x = array[j]%(int)Math.pow(10, i+1)/(int)Math.pow(10, i);
                ArrayList queue2 = queue.get(x);
                queue2.add(array[j]);
                queue.set(x,queue2);
            }
            //�ռ�
            int count = 0;
            for (int j = 0; j < 10; j++) {
                while(queue.get(j).size()>0){
                    ArrayList<Integer> queue3 = queue.get(j);
                    array[count] = queue3.get(0);
                    queue3.remove(0);
                    count++;
                }
            }
        }
    }
}