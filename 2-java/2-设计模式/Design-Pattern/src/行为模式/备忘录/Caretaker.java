package 行为模式.备忘录;
//备忘录管理者
public class Caretaker {
	private I_Memento m ;
	public void saveMemento(I_Memento m){
		this.m = m;
	}
	public I_Memento getMemento(){
		return m;
	}
}

