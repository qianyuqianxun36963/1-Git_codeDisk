package 行为模式.观察者;

//这是个看门的，男性观察者
public class Xtd_ObserverManA extends A_Observer{

	Xtd_ObserverManA(A_Subject subject){
		this.subject = subject;
		this.subject.attach(this);
	}
	void update() {
		System.out.println("ManA: "+subject.getState()*3);
	}
}
