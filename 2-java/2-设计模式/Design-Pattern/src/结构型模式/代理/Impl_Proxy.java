package �ṹ��ģʽ.����;

public class Impl_Proxy implements I_Subject {
	
	I_Subject subject = new Impl_RealSubject();
	
	Impl_Proxy(I_Subject subject){
		this.subject = subject;
	}
	
	//�о��ǲ����е���spring��ܵ�AOP��
	@Override
	public void operate() {
		System.out.println("�����ڹ���ǰ��һЩ������");
		subject.operate();
		Impl_RealSubject realsubject = (Impl_RealSubject) subject;
		realsubject.fun();
		System.out.println("�����ڹ�������һЩ������");
	}

}
