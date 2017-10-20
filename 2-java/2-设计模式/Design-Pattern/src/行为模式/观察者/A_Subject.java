package 行为模式.观察者;

import java.util.*;

public abstract class A_Subject {
	protected int state;
	protected List<A_Observer> observers = new ArrayList<A_Observer>();
	
	abstract void attach(A_Observer observer);
	abstract void detach(A_Observer observer);
	abstract void NotifyAllObservers();
	abstract void setState(int state);
	abstract int getState();
}
