package ��Ϊģʽ.ְ����;

enum RequestType { MAN, WOMAN, CHILD }

public class Request {
	RequestType type;
	String question;
	
	Request(RequestType type,String question){
		this.type = type;
		this.question = question;
	}
}
