package ��.�ڲ�����;

//ÿ��ѡ����С(��)����������(ĩ)λ��Ȼ���ڶԺ������������ͬ���Ĳ�����

//���ȶ�
public class N2_��ѡ������ {

  public static void main(String[] args) {
      int[] a={49,38,65,97,76,13,27,49,78,34,12,64,1,8};
      System.out.println("����֮ǰ��");
      for (int i = 0; i < a.length; i++) {
          System.out.print(a[i]+" ");
      }
      //�򵥵�ѡ������
      for (int i = 0; i < a.length; i++) {
          int min = a[i];
          int n=i; //��С�������� �ҵ���С���������뵱ǰ����������Ԫ��a[i]�Ե���
          for(int j=i+1;j<a.length;j++){
              if(a[j]<min){  //�ҳ���С����
                  min = a[j];
                  n = j;
              }
          }
          a[n] = a[i];
          a[i] = min;
          
          System.out.print("\n����֮��");
          for (int j = 0; j < a.length; j++) {
              System.out.print(a[j]+" ");
          }
      }

  }

}