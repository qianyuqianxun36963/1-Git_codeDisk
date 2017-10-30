package 行为模式.观察者;

public class Xtd_SubjectBeautyGirl extends A_Subject{
	
	public Xtd_SubjectBeautyGirl(int state) {
		this.setState(state);
	}
	
	void attach(A_Observer observer) {
		this.observers.add(observer);
	}

	void detach(A_Observer observer) {
		this.observers.remove(observer);
	}

	void NotifyAllObservers() {
		for(A_Observer observer : observers){
			observer.update();
		}
	}

	public void setState(int state){this.state = state;}
	
	public int getState(){return this.state;};
}
