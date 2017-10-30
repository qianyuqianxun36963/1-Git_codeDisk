package 行为模式.职责链;

public abstract class A_Handler {
	A_Handler successer;
	public void setSuccesser(A_Handler successer){
		this.successer = successer;
	}
	abstract void HandleRequest(Request request);
}
