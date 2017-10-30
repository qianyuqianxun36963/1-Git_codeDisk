package 行为模式.职责链;

enum RequestType { MAN, WOMAN, CHILD }

public class Request {
	RequestType type;
	String question;
	
	Request(RequestType type,String question){
		this.type = type;
		this.question = question;
	}
}
