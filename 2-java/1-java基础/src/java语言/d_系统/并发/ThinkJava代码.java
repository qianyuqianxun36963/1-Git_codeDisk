package java语言.d_系统.并发;

public class ThinkJava代码 {
	public static void main(String args[]){
//		SimpleThread.test();
//		YieldThread.test();
//		SleepThread.test();
		SimplePriorities.test();
	}
}

class SimpleThread extends Thread{
	private static int ThreadNum = 0;
	private int Count = 3;
	
	public SimpleThread(){
		super(" " + ++ThreadNum);
	}
	
	public String toString(){
		return "#" + getName() + ":" + Count;
	}
	
	public void run(){
		while(true){
			System.out.println(this);
			if(Count-- <= 0) return;
		}
	}
	
	public static void test(){
		for(int i = 0;i<3;i++){
			SimpleThread ST = new SimpleThread();
			ST.start();
		}
	}
}

class YieldThread extends Thread{
	private static int ThreadNum = 0;
	private int Count = 3;
	
	public YieldThread(){
		super(" " + ++ThreadNum);
	}
	
	public String toString(){
		return "#" + getName() + ":" + Count;
	}
	
	public void run(){
		while(true){
			System.out.println(this);
			if(Count-- <= 0) return;
			yield();
		}
	}
	
	public static void test(){
		for(int i = 0;i<3;i++){
			YieldThread YT = new YieldThread();
			YT.start();
		}
	}
}

class SleepThread extends Thread{
	private static int ThreadNum = 0;
	private int Count = 3;
	
	public SleepThread(){
		super(" " + ++ThreadNum);
	}
	
	public String toString(){
		return "#" + getName() + ":" + Count;
	}
	
	public void run(){
		while(true){
			System.out.println(this);
			if(Count-- <= 0) return;
			try {
				sleep(100);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void test(){
		for(int i = 0;i<3;i++){
			SleepThread ST = new SleepThread();
			ST.start();
		}
	}
}

class SimplePriorities extends Thread{
	private static int ThreadNum = 0;
	private int Count = 3;
	private volatile double d = 0;
	
	public SimplePriorities(int priority){
		super(" " + ++ThreadNum);
		setPriority(priority);
	}
	
	public String toString(){
		return "#" + getName() + ":" + Count;
	}
	
	public void run(){
		while(true){
			for(int i=0;i<100000;i++)
				d=d+(Math.PI + Math.E)/(double) d;
			System.out.println(this);
			if(Count-- <= 0) return;
		}
	}
	
	public static void test(){
		SimplePriorities SP_Max = new SimplePriorities(Thread.MAX_PRIORITY);
		SP_Max.start();
		for(int i = 0;i<3;i++){
			SimplePriorities SP_Min = new SimplePriorities(Thread.MIN_PRIORITY);
			SP_Min.start();
		}
	}
}

