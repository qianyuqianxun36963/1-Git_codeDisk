package ��Ϊģʽ.�۲���;

//���Ǹ����ŵģ����Թ۲���
public class Xtd_ObserverManA extends A_Observer{

	Xtd_ObserverManA(A_Subject subject){
		this.subject = subject;
		this.subject.attach(this);
	}
	void update() {
		System.out.println("ManA: "+subject.getState()*3);
	}
}
