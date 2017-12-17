package ustc.java.wang.底层原理;

public class 死循环 {
	public static void main(String args[]){
		new DeadLockDemo().DeadLockDemotest();
		
	}
}

//下面程序会引起死锁。dump线程可以看到死锁发生的位置。
class DeadLockDemo {
	private static String	A	= "A";
	private static String	B	= "B";
	public static void DeadLockDemotest()
	{
		new DeadLockDemo().deadLock();
	}


	private void deadLock()
	{
		Thread t1 = new Thread( new Runnable()
			{
				public void run()
				{
					synchronized (A) {
						try { Thread.currentThread().sleep( 2000 ); } 
						catch ( InterruptedException e ) {
							e.printStackTrace();
						} synchronized( B )
						{
							System.out.println( "1" );
						}
					}
				}
			} 
		);
		Thread t2 = new Thread( new Runnable()
			{
				public void run()
				{
					synchronized (B) {
						synchronized (A) {
							System.out.println( "2" );
						}
					}
				}
			} );
		t1.start();
		t2.start();
	}
}

