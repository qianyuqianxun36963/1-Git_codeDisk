package java����.a_��֯.c_��.��ʼ�����;

public class Final����� {
    public static void main(String args[]){
    	
    	int[] x = new int[15];
    	final int[] y=x;
    	y[5] = 213;
    	System.out.println(y[5]);
    	y[5] = 321;
    	System.out.println(y[5]);
    	
//    	int[] w = new int[15];
//    	w[5]=123;
//    	y = w;  //����final�Ƕ������ú㶨���䡣һ�����ñ���ʼ��ָ��һ�����󣬾��޷��������иı���ָ����һ������
//    	Ȼ��������������ȴ�ǿ��Ա��޸ĵģ� Java��δ�ṩʹ�κζ���㶨�����;����
//    	System.out.println(y[5]);
    	
//    	final int z = 12;
//    	z = 21; //����
    	
    }
}
