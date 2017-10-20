package 创建型模式.生成器;

/*
 * 联想一下组装电脑，我们不管CPU,主板等具体型号，是哪一家生产。在需要一个电脑对象的时候，让builder生成以及既是。
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
