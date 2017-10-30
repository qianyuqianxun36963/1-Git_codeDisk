package 创建型模式.单例模式;

public class SingletonFactory {
	private volatile static SingletonFactory mSingletonClass = null;
    
    SingletonFactory() {
    }
    
    public static synchronized SingletonFactory getInstance() {
        if (mSingletonClass == null) {
        	synchronized (SingletonFactory.class) {
                if (mSingletonClass == null) {
                	mSingletonClass = new SingletonFactory();
                }
            }
        }
        
        return mSingletonClass;
    }
    
    public void printLabel() {
        System.out.println("Singleton Class Label.");
    }
}


