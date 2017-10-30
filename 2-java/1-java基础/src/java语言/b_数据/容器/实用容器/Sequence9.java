// holding/Sequence9.java
// TIJ4 Chapter Holding, Exercise 9, page 409
// Modify innerclasses/Sequence.java so that Sequence works with an Iterator
// instead of a Selector.
package java语言.b_数据.容器.实用容器;
import java.util.*;

public class Sequence9 {
	private ArrayList<Object> items = new ArrayList<Object>();
	public void add(Object x) {
		items.add(x);
	}
	@SuppressWarnings("rawtypes")
	public Iterator iterator() {
		return items.iterator();
	}
	@SuppressWarnings("rawtypes")
	public static void main(String[] args) {
		Sequence9 sequence = new Sequence9();
		for(int i = 0; i < 10; i++)
			sequence.add(Integer.toString(i));
		Iterator it = sequence.iterator();
		while(it.hasNext()) {									
			System.out.print(it.next() + " ");
		}
	}
}





