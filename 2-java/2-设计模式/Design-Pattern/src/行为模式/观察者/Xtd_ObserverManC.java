package ��Ϊģʽ.�۲���;

public class Xtd_ObserverManC extends A_Observer{
	
	Xtd_ObserverManC(A_Subject subject){
		this.subject = subject;
		this.subject.attach(this);
	}
	void update() {
		System.out.println("ManC: "+subject.getState()*10);
	}

}
