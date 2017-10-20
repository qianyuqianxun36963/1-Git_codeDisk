package ��Ϊģʽ.����¼;
//����¼������
public class Originator {
	//�����Ҫ�����״̬
	private int state= 90;
	//����һ��������¼�����߽�ɫ���Ķ���
	private Caretaker c = new Caretaker();
	//��ȡ����¼��ɫ�Իָ���ǰ��״̬
	public void setMemento(){
		Memento memento = (Memento)c.getMemento();
		state = memento.getState();
		System.out.println("the state is "+state+" now");
	}
	//����һ������¼��ɫ��������ǰ״̬���Դ��룬�и�������¼�����߽�ɫ����š�
	public void createMemento(){
		c.saveMemento(new Memento(state));
	}
	//this is other business methods...
	//they maybe modify the attribute state
	public void modifyState4Test(int m){
		state = m;
		System.out.println("the state is "+state+" now");
	}
	//��Ϊ˽���ڲ���ı���¼��ɫ����ʵ����խ�ӿڣ����Կ����ڵڶ��ַ����п��	���Ѿ�������Ҫ
	//ע�⣺��������Ժͷ�������˽�е�
	private class Memento implements I_Memento{
		private int state ;              
	
		private Memento(int state){
			this.state = state ;
		}
		private int getState(){
			return state;
		}
	}
}
