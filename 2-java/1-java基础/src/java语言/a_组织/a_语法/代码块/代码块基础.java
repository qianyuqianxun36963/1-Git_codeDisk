package java����.a_��֯.a_�﷨.�����;

public class �������� {
	public static void main(String args[]){
		NormalBlock.test();
		ConstructBlock.test();
		(new ConstructBlock()).test();
		StaticBlock.test();
	}
}

//��ͨ����� 
//λ�ã��ڷ���������г��֣�
class NormalBlock{
	public static void test(){
		{
			int i = 111;
			System.out.println(i);
		}
		int i = 222;
		System.out.println(i);
		{
//			int i =333;//�������i �Ѿ������ˣ������ܸ�ǰ��һ��������ص��ˡ�
			System.out.println(i);
			i = 333;
			System.out.println(i);
		}
	}
}

//��������
//λ�ã�ֱ�������ж��壬��û�м�static�ؼ��ֵĴ����
class ConstructBlock{
	{
		System.out.println("�ඨ���е�-��������");
	}
	ConstructBlock(){
		//��Ҫ�����ĵ���˳��--����ⲻ������ͨ������
		//�����ڹ��췽������Ĵ���飬�ɲ��ǹ��������ˣ���
		{System.out.println("���췽�����-��������1");}
		System.out.println("���췽��");
		{System.out.println("���췽�����-��������2");}
	}
	public static void test(){
		System.out.println("�����ķ���");
	}
}

//��̬�����
//λ�ã���java��ʹ��static�ؼ��������Ĵ���飡���ܴ������κη������ڣ�
class StaticBlock{
	static{
		System.out.println("StaticBlock�ľ�̬�����");
	}
	
	{
		System.out.println("StaticBlock�Ĺ����");    
	}
     
	public StaticBlock(){
		System.out.println("StaticBlock�Ĺ��췽��");
   	}
        
	public static void test(){
		System.out.println("StaticBlock��������");
		new Code();
		new Code();
		new StaticBlock();
		new StaticBlock();
	}
}

class Code{
    //��̬�����ڳ�ʼ���࣬Ϊ������Գ�ʼ����ÿ����̬�����ֻ��ִ��һ�Ρ�����JVM�ڼ�����ʱ��ִ�о�̬����飬���Ծ�̬���������������ִ�С�
    //1 ��̬����鲻�ܴ������κη������ڡ�2 ��̬����鲻��ֱ�ӷ��ʾ�̬ʵ��������ʵ����������Ҫͨ�����ʵ�����������ʡ�
    static{
        System.out.println("Code�ľ�̬�����");
    }
    
    {
    	System.out.println("Code�Ĺ����");
	}
        
    public Code(){
        System.out.println("Code�Ĺ��췽��");
    }
}

//ͬ�������
class SyncBlock{
	
}