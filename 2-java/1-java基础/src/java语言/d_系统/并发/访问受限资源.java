package java����.d_ϵͳ.����;

public class ����������Դ {

	public static void main(String args[]){
		WrongWay();
	}
	
	public static void WrongWay(){}
	
}

class ChildThread extends Thread{
	@Override
	public void run() {
		super.run();
	}
}

class BrotherThread extends Thread{
	public void run(){
		super.run();
		
	}
}