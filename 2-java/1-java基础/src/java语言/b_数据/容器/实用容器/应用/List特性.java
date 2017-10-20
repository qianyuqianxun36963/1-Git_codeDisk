// holding/Ex14.java
// TIJ4 Chapter Holding, Exercise 14, page 412
/* Create an empty LlinkedList<Integer>. Using a ListIterator, add Integers
* to the list by always inserting them in the middle of the list.
*/
package java语言.b_数据.容器.实用容器.应用;
import java.util.*;

public class List特性 {
	static void addMiddle_Linked(LinkedList<Integer> l, Integer[] ia) {
		for(Integer i : ia) {
			ListIterator<Integer> it =  //ListIterator 没有当前元素；它的光标位置 始终位于调用 previous() 所返回的元素和调用 next() 所返回的元素之间。
				l.listIterator((l.size())/2); //可以用序号的方式访问具体某一个元素。
			it.add(i);
			System.out.println(l);
		}
	}
	
	static void addMiddle_Array(ArrayList<Integer> l, Integer[] ia) {
		for(Integer i : ia) {
			ListIterator<Integer> it = 
				l.listIterator((l.size())/2); //可以用序号的方式访问具体某一个元素。
			it.add(i);
			System.out.println(l);
		}
	}

	static void addMiddle_Vector(Vector<Integer> l, Integer[] ia) {
		for(Integer i : ia) {
			ListIterator<Integer> it = 
				l.listIterator((l.size())/2); //可以用序号的方式访问具体某一个元素。
			it.add(i);
			System.out.println(l);
		}
	}
	
	public static void main(String[] args) {
		LinkedList<Integer> li = new LinkedList<Integer>();
		ArrayList<Integer> ali = new ArrayList<Integer>();
		Vector<Integer> ve = new Vector<Integer>();
		Integer[] x = {0, 1, 2, 3, 4, 5, 6, 7};
		List特性.addMiddle_Linked(li, x);
		List特性.addMiddle_Array(ali, x);
		List特性.addMiddle_Vector(ve, x);
	}	
}
