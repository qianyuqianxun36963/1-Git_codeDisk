package ustc.java.wang.synchronized�ؼ���;

public class Synchronized���� {
    public static void main(String[] args) {
        StringLock.test();
        
    }
}

//������Ҫ��String������Ϊ����
class StringLock{
	public void method() {
        //synchronized (new String("�ַ�������")) {
        synchronized ("�ַ�������") {
            try {
                while(true){
                    System.out.println("��ǰ�߳� : "  + Thread.currentThread().getName() + "��ʼ");
                    Thread.sleep(1000);        
                    System.out.println("��ǰ�߳� : "  + Thread.currentThread().getName() + "����");
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
	
    public static void test() {
        final StringLock stringLock = new StringLock();
        Thread t1 = new Thread(new Runnable() {
            public void run() {
                stringLock.method();
            }
        },"t1");
        Thread t2 = new Thread(new Runnable() {
            public void run() {
                stringLock.method();
            }
        },"t2");
        
        t1.start();
        t2.start();
    }
}