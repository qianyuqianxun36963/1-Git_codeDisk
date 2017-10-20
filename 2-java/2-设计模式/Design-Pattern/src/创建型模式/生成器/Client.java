package ������ģʽ.������;

/*
 * ����һ����װ���ԣ����ǲ���CPU,����Ⱦ����ͺţ�����һ������������Ҫһ�����Զ����ʱ����builder�����Լ����ǡ�
 * */

public class Client {
	public static void main(String args[]){
		Director director = new Director(new Impl_ThinkpadW541Builder());
		I_Computer W541 = director.produceComputer();
		for(I_ComputerItem it:W541){System.out.println(it.toString());}
		
		Director director2 = new Director(new Impl_ThinkpadP50Builder());
		I_Computer P50 = director2.produceComputer();
		for(I_ComputerItem it:P50){System.out.println(it.toString());}
	}
}
