package 行为模式.职责链;

public class Xtd_ConcreteHandlerChild extends A_Handler {

	@Override
	public void HandleRequest(Request request) {
		System.out.println(request.type);
		if(request.type == RequestType.CHILD)
			System.out.println("Handle Child's question: " + request.question);
		else
			if(this.successer != null)
				this.successer.HandleRequest(request);
			else
				System.out.println("There is no handler for this question");
	}
}