package java语言.d_系统.并发;

public class 访问受限资源 {

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