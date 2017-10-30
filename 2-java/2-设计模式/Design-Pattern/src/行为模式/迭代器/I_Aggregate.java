package 行为模式.迭代器;


/**
 *  The interface to create concrete iterator
 *  When create iterator, we can use Factory Method pattern
 */

//aggregate 集合。 例如list、set 之类的。
public interface I_Aggregate  {
    public I_Iterator CreateIterator();
}