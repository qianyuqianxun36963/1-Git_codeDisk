package 行为模式.职责链;

public class Xtd_ConcreteHandlerWoman extends A_Handler {
	
	@Override
	public void HandleRequest(Request request) {
		if(request.type == RequestType.WOMAN)
			System.out.println("Handle woman's question: " + request.question);
		else
			if(this.successer != null)
				this.successer.HandleRequest(request);
			else
				System.out.println("There is no handler for this question");
	}

}
