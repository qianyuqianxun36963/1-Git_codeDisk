package java����.d_ϵͳ.����;

public class �̻߳��� {
	public static void main(String args[]) throws InterruptedException{
//		//ʹ�����෽ʽ�����̡߳�
		new MyThread().text();
        
//		//ʹ�ýӿ��ഴ���̡߳�
		new MyRunClass().text();
		
//		//�߳�����
		new join_main().text();
		
	}
}

//�̳�Thread�෽ʽ�� ��������������ӳ�Ա���Ժͺ������ḻ�߳��๦�ܡ�
class MyThread extends Thread{ 
	public void text(){
		Thread t1 = new MyThread("����");
		Thread t2 = new MyThread("����");
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

//ʵ��Runnable�ӿڷ�ʽ������ʵ����ĳ�Ա������Ȼ���ǹ��õ������ˡ��������������߳��ڣ����Թ�����Щ��Ա���ԡ�
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
		System.out.println("�����ҵ��̡߳� mynumber is :"+myage);
	}
}

//�߳����� join������
class join_main extends Thread{
	public void text(){
		join_main main=new join_main();
		main.start();
	}
	public void run(){
		join_slave slave=new join_slave();
		System.out.println("before join");
		try {
			slave.start(); //join֮ǰ����Ҫjoin���߳���������
			slave.join();  //join��ȥ��
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

//ͬ���̡߳�
class SynThread	extends Thread{
	
}