// holding/Ex28.java
// TIJ4 Chapter Holding, Exercise 28, page 427
/* Fill a PriorityQueue (using offer()) with Double values created using 
* java.util.Random, then remove the elements using poll() and display them.
*/
package java语言.b_数据.容器.实用容器;

import java.util.*;

public class Ex28 {
	public static void main(String[] args) {
		Random rand = new Random();
		PriorityQueue<Double> d = new PriorityQueue<Double>();
		for(int i = 0; i < 10; i++)
			d.offer(rand.nextDouble() * i);
		while(d.peek() != null)
			System.out.print(d.poll() + " ");
	}
}


