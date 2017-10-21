package �㷨.��̬�滮;

import java.util.HashMap;
import java.util.Map;

//��������
//������һ�ټ�̨�ף�ÿ��ֻ����һ�����������������ܹ��ж������߷���
//��������������㷨����һ�֣�̨����50�͹�Ǻ�ˡ������ڶ���Ҫ�ǲ��û��棬100Ҳ������.
//�ӻ��������и���Ծ�����Ե�7000�� ���ǵ�8000�ͻ���ֶ�ջ����ˡ�
//��̬�滮���ܾ��Ƿ������1000000000�׶����ԣ�

public class ̨������ {
	static int steps = 1000000000;
	static long temptime = 0;
	static Map results = new HashMap<Integer,Integer>();
	
	public static void main(String args[]){
		temptime = System.currentTimeMillis();
//		System.out.println("�����ݹ飺"+getClibingWays_digui(steps)+" ��ʱ�� "+ (System.currentTimeMillis()-temptime));
		temptime = System.currentTimeMillis();
//		System.out.println("�����㷨��"+getClibingWays_beiwang(steps,results)+" ��ʱ�� "+ (System.currentTimeMillis()-temptime));
		temptime = System.currentTimeMillis();
		System.out.println("���Թ滮��"+getClibingWays_dongtai(steps)+" ��ʱ�� "+ (System.currentTimeMillis()-temptime));
	}
	
	//��һ�ַ������ݹ��㷨���������ԡ�
	public static int getClibingWays_digui(int n){
		if (n  < 1){return 0;}
		if (n == 1){return 1;}
		if (n == 2){return 2;}
		return getClibingWays_digui(n-1)+getClibingWays_digui(n-2);
	}
	
	//�ڶ��ַ��������ñ���¼�㷨���Զ����£�f(100) = f(99) + f(98); 
	//�����ڵݹ�Ĺ����У����ڶ����ͬ�Ĳ���-�����ͬ������ʹ�û��棬�����ظ����㡣
	public static int getClibingWays_beiwang(int n,Map results){
		if (n  < 1){return 0;}
		if (n == 1){return 1;}
		if (n == 2){return 2;}
		if (results.containsKey(n)) return (int) results.get(n);
		else {
			int value = getClibingWays_beiwang(n-1,results) + getClibingWays_beiwang(n-2,results);
			results.put(n,value);
			return value;
		}
	}
	
	//�����ַ��������Թ滮��
	//��ʵÿ�εĽ��ֻ������ǰ����ִ�еĽ����f(n) = f(n-1) + f(n-2)��ֻ��Ҫ��סǰ���ε�״̬�Ϳ��ԡ�
	public static int getClibingWays_dongtai(int n){
		int oldnum=0,newnum=0,temp=0;
		for(int i=0;i<=n;i++){
			if (i  < 1){newnum = 0;}else
			if (i == 1){newnum = 1;}else
			if (i == 2){oldnum=1;newnum=2;}else{
			temp=oldnum;oldnum=newnum;newnum=temp+oldnum;}
		}
		return newnum;
	}
}



