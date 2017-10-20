package 结构型模式.代理;

public class Impl_Proxy implements I_Subject {
	
	I_Subject subject = new Impl_RealSubject();
	
	Impl_Proxy(I_Subject subject){
		this.subject = subject;
	}
	
	//感觉是不是有点像spring框架的AOP。
	@Override
	public void operate() {
		System.out.println("代理在工作前做一些动作。");
		subject.operate();
		Impl_RealSubject realsubject = (Impl_RealSubject) subject;
		realsubject.fun();
		System.out.println("代理在工作后做一些动作。");
	}

}
