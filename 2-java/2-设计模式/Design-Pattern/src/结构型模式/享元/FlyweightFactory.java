package 结构型模式.享元;
/**
 *  A Flyweight Factory
 */
import java.util.*;

public class FlyweightFactory  {
    private Hashtable<String, I_Flyweight> charHashTable = new Hashtable<String, I_Flyweight>();
    
    public FlyweightFactory() {
    }

    public I_Flyweight GetFlyWeight(String s) {
        if(charHashTable.get(s) != null) {
            return (I_Flyweight)charHashTable.get(s);
        } else {
            I_Flyweight tmp = new Impl_ConcreteFlyweight(s);
            charHashTable.put(s, tmp);
            return tmp;
        }
    }
    public Hashtable<String, I_Flyweight> GetFactory() {
        return charHashTable;
    }
}