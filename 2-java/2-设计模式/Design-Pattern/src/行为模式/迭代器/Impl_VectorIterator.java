package 行为模式.迭代器;
/**
 *  A vector iterator to print data reverse
 */
import java.util.*;

public class Impl_VectorIterator implements I_Iterator {
    private List<Object> data = new ArrayList<Object>();
    private int cursor = 0;

    public Impl_VectorIterator(List<Object> _data) {
        data = _data;
    }    
    public void First() {
        //cursor = 0;
        cursor = (data.size() - 1);
    }
    public void Next() {
        //cursor++;
        cursor--;
    }
    public boolean IsDone() {
        //return (cursor >= data.size());
        return (cursor < 0);
    }
    public void CurrentItem() {
        if(IsDone()) {
            System.out.println("Reach the end of the vector");
        } else {
            System.out.println("Number " + cursor + ": " + data.get(cursor));
        }
    }
}