package ��Ϊģʽ.ְ����;

public abstract class A_Handler {
	A_Handler successer;
	public void setSuccesser(A_Handler successer){
		this.successer = successer;
	}
	abstract void HandleRequest(Request request);
}
