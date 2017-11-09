// holding/Ex7.java
// TIJ4 Chapter Holding, Exercise 7, page 406
/* Create a class, then make an initialized array of objects of your class
* Fill a List from your array. Create a subset of your List by using 
* subList(), then remove this subset from your List.
*/
package java语言.b_数据.容器.实用容器;
import static java语言.z_common.utils.Myutils.*;

import java.util.*;

class Tester {
    public static int counter = 0;
    private int id = counter++;
    public String toString() { return String.valueOf(id); }    
}

public class Ex7 {
    public static void main(String[] args) {        
        Tester[] t = new Tester[10];
        for(int i = 0; i < t.length; i++)
            t[i] = new Tester();
        List<Tester> lt = new ArrayList<Tester>();
        for(Tester x : t) lt.add(x);
        print("list of Tester: " + lt);
        List<Tester> sub = lt.subList(2, 6);
        print("subList: " + sub);
        // produces run time ConcurrentModificationException:
        // lt.removeAll(sub);
        // so, first make copy, remove sub, re-assign lt:
        List<Tester> copy = new ArrayList<Tester>(lt);
        copy.removeAll(sub);
        print("copy: " + copy);
        lt = copy;
        print("list of Tester: " + lt);
    }
}