package 行为模式.职责链;

public class Client {
	public static void main(String args[]){
		Request childRequest = new Request(RequestType.CHILD,"who is my momo");
		Request manRequest   = new Request(RequestType.MAN,"how to be strong");
		Request womanRequest = new Request(RequestType.WOMAN,"how to be beauty");
		
		Xtd_ConcreteHandlerChild h1 = new Xtd_ConcreteHandlerChild();
		Xtd_ConcreteHandlerMan   h2 = new Xtd_ConcreteHandlerMan();
		Xtd_ConcreteHandlerWoman h3 = new Xtd_ConcreteHandlerWoman();
		h1.setSuccesser(h2);
		h2.setSuccesser(h3);
		
		h1.HandleRequest(childRequest);
		h1.HandleRequest(manRequest);
		h1.HandleRequest(womanRequest);
	}
}
