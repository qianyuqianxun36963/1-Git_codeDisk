package 行为模式.观察者;

public class Client {
	public static void main(String args[]){
		Xtd_SubjectBeautyGirl girl = new Xtd_SubjectBeautyGirl(1);
		
		new Xtd_ObserverManA(girl);
		new Xtd_ObserverManB(girl);
		new Xtd_ObserverManC(girl);
		
		girl.setState(123);
		girl.NotifyAllObservers();
		girl.setState(111);
		girl.NotifyAllObservers();
	}
}
