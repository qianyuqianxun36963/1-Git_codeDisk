package java语言.d_系统.并发;

public class 线程机制 {
	public static void main(String args[]) throws InterruptedException{
//		//使用子类方式创建线程。
		new MyThread().text();
        
//		//使用接口类创建线程。
		new MyRunClass().text();
		
//		//线程联合
		new join_main().text();
		
	}
}

//继承Thread类方式。 可以在子类中添加成员属性和函数，丰富线程类功能。
class MyThread extends Thread{ 
	public void text(){
		Thread t1 = new MyThread("阿三");
		Thread t2 = new MyThread("李四");
		t1.start(); 
		t2.start(); 
	}
	
	public MyThread() {
        super();
    } 
	
    public MyThread(String name) {
        super(name);
    } 

    public void run() {
        for(int i = 0;i<5;i++){
            System.out.println(this.getName()+" :"+i);
        } 
    } 
}

//实现Runnable接口方式。这样实现类的成员属性自然就是公用的属性了。在由他创建的线程内，可以公用这些成员属性。
class MyRunClass implements Runnable{
	public void text() throws InterruptedException{
		MyRunClass myrunclass = new MyRunClass();
		Thread thread1=new Thread(myrunclass);
		thread1.start();
		Thread.sleep(100);
		Thread thread2=new Thread(myrunclass);
		thread2.start();
	}
	
	public int myage=1;
	public void run(){
		myage=myage+1;
		System.out.println("这是我的线程。 mynumber is :"+myage);
	}
}

//线程联合 join操作。
class join_main extends Thread{
	public void text(){
		join_main main=new join_main();
		main.start();
	}
	public void run(){
		join_slave slave=new join_slave();
		System.out.println("before join");
		try {
			slave.start(); //join之前把需要join的线程起起来。
			slave.join();  //join进去。
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		System.out.println("after join");
	}
}

class join_slave extends Thread{
	public void run(){
		System.out.println("this is join");
	}
}

//同步线程。
class SynThread	extends Thread{
	
}