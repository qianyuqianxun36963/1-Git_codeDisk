package 行为模式.观察者;

public class Xtd_ObserverManB extends A_Observer{
	Xtd_ObserverManB(A_Subject subject){
		this.subject = subject;
		this.subject.attach(this);
	}
	void update() {
		System.out.println("ManB: "+subject.getState()*1);
	}
}
