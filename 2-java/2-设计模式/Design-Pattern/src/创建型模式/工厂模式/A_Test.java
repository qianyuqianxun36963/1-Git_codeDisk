package ������ģʽ.����ģʽ;

public class A_Test {
	public static void main(String args[]){
    	// �򵥹���ģʽ����      ��ܼ򵥣���ʹ���˶�̬��װ������������������
        Factory_Simple simpleFactory = new Factory_Simple();
        Impl_Broom broom = (Impl_Broom) simpleFactory.create(Impl_Broom.class);//��Ʒ�ľ�����������ѡ��
        broom.run(); //Ϊ����������ò���Ϊ�գ��������еĻ�õĶ���ʵ����һ���ӿڣ����﷽�����ǽӿ����Ѿ�����ġ�
        
        // ��������ģʽ����
        Factory_Vehicle factory = new Xtd_PlaneFactory();//��Ʒ�ľ���������ͨ��ѡʲô������ʵ�֡�
        I_Moveable moveable = factory.create(); //ע��!!: ������ǹ����ķ�����ʵ������������!!
        moveable.run();
        
        //���󹤳�ģʽ
        Factory_Abstract factoryA = new Xtd_ExtendFactoryA();
        I_Moveable m = factoryA.getMoveable();
        I_Writeable w = factoryA.getWriteable();
        m.run();
        w.write();
    }
}
