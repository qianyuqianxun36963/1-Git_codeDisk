package java����.a_��֯.c_��.��ʼ�����;

public class ʵ�������� {
	public static void main(String[] args) {
		testLoad.test();
    }
}



class testLoad{
	public static void test(){
		ClassLoadProcess classload = new ClassLoadProcess();//����ִ����class�������ʱ��ĳ�ʼ����
        System.out.println(classload.counter1);
        System.out.println(classload.counter2);
        
        ClassLoadProcess classload2 = new ClassLoadProcess();//���ﲻ��ִ��class�������صĳ�ʼ����
        System.out.println(classload2.counter1);
        System.out.println(classload2.counter2);
        
        ClassInstenceProcess classinstance = new ClassInstenceProcess();//����ִ����class�������ʱ��ĳ�ʼ����
        System.out.println(classinstance.counter1);
        System.out.println(classinstance.counter2);
        
        ClassInstenceProcess classinstance2 = new ClassInstenceProcess();//���ﲻ��ִ��class�������صĳ�ʼ����
        System.out.println(classinstance2.counter1);
        System.out.println(classinstance2.counter2);
	}
}

//��ļ��ع��̡�
//��ľ�̬��Ա��ʼ��ֻ������ص�ʱ��ִ��һ�Σ����治��ִ�С�
class ClassLoadProcess {
//  1����ʼ����̬���ݡ�
    static int counter1; //javaĬ�ϻ�Ϊ����ֵΪ 0.
    static int counter2 = 0;
    
//  ��������ֱ�ͨ����̬����顢���췽������̬�������ַ�ʽʵ�־�̬���ݵĳ�ʼ����
//  ���ﾲ̬���ݵĳ�ʼ���Ǹ��Ǹ��µġ��������ŵ����棬���в�ͬЧ����
    static {counter1 = 5;}
    static ClassLoadProcess sin = new ClassLoadProcess();
    static int counter3 = initcounter(counter1);

    public ClassLoadProcess() {
    	System.out.println("���췽��:"+"counter1="+counter1+" ;counter2="+counter2);
        counter1++;
        counter2++;
    }
    
    public static int initcounter(int counter){return counter++;}

}

//���ʵ�������̡�
class ClassInstenceProcess {
//  1����ʼ�����ݡ�
    int counter1; //javaĬ�ϻ�Ϊ����ֵΪ 0.
    int counter2 = 0;
    
//  ��������ֱ�ͨ������顢ʵ�������������췽�� ���У������ַ�ʽʵ�־�̬���ݵĳ�ʼ����
//  ���ﾲ̬���ݵĳ�ʼ���Ǹ��Ǹ��µġ��������ŵ����棬���в�ͬЧ����
    {counter1 = 5;}
//  ClassInstenceProcess sin = new ClassInstenceProcess(); //������ù��췽����ʼ�����Ի�����ѭ��������ջ����쳣��
    int counter3 = initcounter(counter1);

    public ClassInstenceProcess() {
    	System.out.println("���췽��:"+"counter1="+counter1+" ;counter2="+counter2);
        counter1++;
        counter2++;
    }
    
    public static int initcounter(int counter){return counter++;}
}

 