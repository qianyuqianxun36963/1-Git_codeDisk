package ������ģʽ.����ģʽ;

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


