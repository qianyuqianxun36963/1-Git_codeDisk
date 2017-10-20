package wangyi;

import java.util.Scanner;
import java.util.concurrent.BrokenBarrierException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.CyclicBarrier;

public class 魔力手环循环相加 {
	public static void main(String args[]) throws InterruptedException{
		Scanner in = new Scanner(System.in);
		
		int THREAD_NUM = in.nextInt();
		int TIMES = in.nextInt();
		//int[] members = {1,2,3,4,5};
		int[] members = new int[THREAD_NUM];
		for(int i=0;i<THREAD_NUM;i++){
			members[i] = in.nextInt();
		}
		CyclicBarrier part = (CyclicBarrier) BarrierUtils.create(THREAD_NUM, "BarrierActionPart");
		CyclicBarrier whole = (CyclicBarrier) BarrierUtils.create(THREAD_NUM, "BarrierActionWhole");
		
		for(int t = 0;t<TIMES;t++)
		{
			CountDownLatch latch = new CountDownLatch(THREAD_NUM);
			for(int i=0;i<THREAD_NUM;i++){
				new Thread(new ForkFunction(i,members,latch,part,whole)).start();
			}
			latch.await();
			
		}
		for(int i=0;i<members.length-1;i++){System.out.print(members[i]+" ");}
		System.out.print(members[members.length-1]);
		
	}

}

class ForkFunction implements Runnable{
	int i,temp;	int[] members;
	CountDownLatch latch = null;
	CyclicBarrier part = null,whole = null;
	ForkFunction(int i,int[] members,CountDownLatch latch,CyclicBarrier part,CyclicBarrier whole){this.i = i;this.members = members;this.latch = latch; this.part = part;this.whole = whole;}
	public void run(){
		try {
			temp = (members[i]+members[(i+1)%members.length])%100;
//			System.out.println("members["+i+"]:"+members[i]);
			part.await();
			members[i] = temp;
//			System.out.println("members["+i+"]:"+members[i]);
			whole.await();
			latch.countDown();
		} catch (InterruptedException e) {
			e.printStackTrace();
		} catch (BrokenBarrierException e) {
			e.printStackTrace();
		}
	}
}

class BarrierUtils{
	//这里将内部类定义为静态的： return new CyclicBarrier(n,new BarrierActionPart());
	//如果这里没写成静态的则要： return new CyclicBarrier(n,(new BarrierUtils()).new BarrierActionPart());
	static class BarrierActionPart implements Runnable{
		public void run() {
//			System.out.println("each thread compute one part!");
		}
	}
	
	static class BarrierActionWhole implements Runnable{
		public void run() {
//			System.out.println("threads compute together!");
		}
	}
	
    public static Object create(int n,String actionName) {
        if (actionName.equals(BarrierActionPart.class.getSimpleName())) {
            return new CyclicBarrier(n,new BarrierActionPart());
        } else if (actionName.equals(BarrierActionWhole.class.getSimpleName())) {
            return new CyclicBarrier(n,new BarrierActionWhole());
        }
        return null;
    }
	
    public static Object create(int n,Class<?> clazz) {
        return create(n,clazz.getName());
    }
    
    public static Object create(int n) {
        return new CyclicBarrier(n);
    }
    
}
