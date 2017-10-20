// holding/Ex14.java
// TIJ4 Chapter Holding, Exercise 14, page 412
/* Create an empty LlinkedList<Integer>. Using a ListIterator, add Integers
* to the list by always inserting them in the middle of the list.
*/
package java����.b_����.����.ʵ������.Ӧ��;
import java.util.*;

public class List���� {
	static void addMiddle_Linked(LinkedList<Integer> l, Integer[] ia) {
		for(Integer i : ia) {
			ListIterator<Integer> it =  //ListIterator û�е�ǰԪ�أ����Ĺ��λ�� ʼ��λ�ڵ��� previous() �����ص�Ԫ�غ͵��� next() �����ص�Ԫ��֮�䡣
				l.listIterator((l.size())/2); //��������ŵķ�ʽ���ʾ���ĳһ��Ԫ�ء�
			it.add(i);
			System.out.println(l);
		}
	}
	
	static void addMiddle_Array(ArrayList<Integer> l, Integer[] ia) {
		for(Integer i : ia) {
			ListIterator<Integer> it = 
				l.listIterator((l.size())/2); //��������ŵķ�ʽ���ʾ���ĳһ��Ԫ�ء�
			it.add(i);
			System.out.println(l);
		}
	}

	static void addMiddle_Vector(Vector<Integer> l, Integer[] ia) {
		for(Integer i : ia) {
			ListIterator<Integer> it = 
				l.listIterator((l.size())/2); //��������ŵķ�ʽ���ʾ���ĳһ��Ԫ�ء�
			it.add(i);
			System.out.println(l);
		}
	}
	
	public static void main(String[] args) {
		LinkedList<Integer> li = new LinkedList<Integer>();
		ArrayList<Integer> ali = new ArrayList<Integer>();
		Vector<Integer> ve = new Vector<Integer>();
		Integer[] x = {0, 1, 2, 3, 4, 5, 6, 7};
		List����.addMiddle_Linked(li, x);
		List����.addMiddle_Array(ali, x);
		List����.addMiddle_Vector(ve, x);
	}	
}
