package ustc.java.wang.synchronized关键字;

public class Synchronized基础 {
    public static void main(String[] args) {
        StringLock.test();
        
    }
}

//尽量不要用String常量作为锁。
class StringLock{
	public void method() {
        //synchronized (new String("字符串常量")) {
        synchronized ("字符串常量") {
            try {
                while(true){
                    System.out.println("当前线程 : "  + Thread.currentThread().getName() + "开始");
                    Thread.sleep(1000);        
                    System.out.println("当前线程 : "  + Thread.currentThread().getName() + "结束");
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