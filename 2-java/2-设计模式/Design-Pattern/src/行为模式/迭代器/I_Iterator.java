package 行为模式.迭代器;
/**
 *  Iterator Interface
 */
public interface I_Iterator {
    public abstract void First();
    public abstract void Next();
    public abstract boolean IsDone();
    public abstract void CurrentItem();
}