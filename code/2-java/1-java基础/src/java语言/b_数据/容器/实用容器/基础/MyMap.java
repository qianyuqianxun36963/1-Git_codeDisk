package java语言.b_数据.容器.实用容器.基础;

import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

import org.junit.Test;

public class MyMap {

    @Test
    public void test() {
        MyMap_HashMap.unique();
        MyMap_HashMap.complexkey();
        
        MyMap_EnumMap.testEnumMap();
        
        MapUtil.testTraverse();
        
        MyMap_Simple.testNullValue();
    }
}

class MyMap_Simple{
    public static void testNullValue(){
        Map myMap = new HashMap();
        // if((boolean) myMap.get("name")) 错误写法
        if(null != myMap.get("name")){
            //map 获取空 null是可以的，但不能放在判断里，会报null错。
            System.out.println(myMap.get("name")); 
        }
    }
}

//EnumMap
class MyMap_EnumMap{
    enum Season {  SPRING, SUMMER, FALL, WINNTER }  
    
    //注意这里的定义方式。构造函数需要枚举类型的类型作为参数。
    //另外，在java中，没有new的话，对象实例是没分配空间的，不能直接用，与C++不同！
    static EnumMap<Season, String> enumMap = new EnumMap<Season, String>(Season.class);//这里必须要指定类型，用EnumMap<?,?>这种形式后面调用put是不行的。
    
    public static void testEnumMap(){
        //enumMap.put(123, 123); //这种写法是错误的，key必须是enum类型。
        enumMap.put(Season.SPRING,"spring");
        
        System.out.println(enumMap.get(Season.SPRING));
    }
}


//HashMap实际上是一个“链表散列”的数据结构，即数组和链表的结合体。
//数据结构中处理hash冲突的一种方法就是“链地址法”
//table数组：[...]-[...]-[...]-[...]-[...]-[...]-[...]-[...]
//             |           |
//链表                   [...]       [...]
//             |           
//           [...]   

//当我们往HashMap中put元素的时候，先根据key的hashCode重新计算hash值，根据hash值得到这个元素在数组中的位置（即下标），
//如果数组该位置上已经存放有其他元素了，那么在这个位置上的元素将以链表的形式存放，新加入的放在链头，最先加入的放在链尾。
//如果数组该位置上没有元素，就直接将该元素放到此数组中的该位置上。

class MyMap_HashMap{
    //键是唯一的。
        @SuppressWarnings({ "unchecked", "rawtypes" })
        public static void unique(){
               //两个map具有不同的key
               HashMap map1 = new HashMap(); 
               map1.put("1", "A"); 
               HashMap map2 = new HashMap(); 
               map2.put("2", "B"); 
               map2.put("3", "C"); 
               map1.putAll(map2); 
               System.out.println(map1);
               //两个map具有重复的key
               HashMap map3 = new HashMap(); 
               map3.put("1", "A"); 
               HashMap map4 = new HashMap(); 
               map4.put("1", "B"); 
               map4.put("3", "C"); 
               map3.putAll(map4); 
               System.out.println(map3);
               
               map1.remove("1");
               System.out.println(map1);
               
               List<Map> scores = new ArrayList<Map>();
               Map<String,Object> score = new HashMap<String,Object>();
               score.put("wangfang","100");
               scores.add(score);
               
               List<Map> scores2 = new ArrayList<Map>();
               Map<String,Object> score2 = new HashMap<String,Object>();
               score2.put("xiaofang","111");
               scores2.add(score2);
               
               map1.put("scores",scores);
               System.out.println(map1);
               
               map1.put("scores",scores2);
               System.out.println(map1);
        }
        
        //键值对中，键可以是复杂类型吗、
        @SuppressWarnings({ "rawtypes", "unchecked" })
        public static void complexkey(){
            Point p1 = new Point(0,0);
            HashMap map1=new HashMap(); 
            map1.put(p1, "A"); 
            Point p2 = new Point(0,0);
            map1.put(p2, "ABC"); 
            System.out.println(map1.get(p1));
            System.out.println(map1.get(p2));
        }
        
        //用数组作为key 取值是空的，没什么用。
        public static void checkStrArraykey(){
            ConcurrentMap<String[], String> map = new ConcurrentHashMap<String[], String>();  
            String[] str1 = {"1", "001"};  
            String[] str2 = {"2", "002"};  
              
            map.put(str1, "1001");  
            map.put(str2, "2002");  
              
            String[] str3 = {"1", "001"};  
              
            System.out.println(map.get(str3)); //这里打印为null。
            //Map在进行put的时候，如果key作为以数组或其他非字符串为键的时候，
            //java内部是视为其Object类型的，因此put到内存中的时候，它存在于一个具体的地址。
            //因此当指定一个相同的字符串数组的时候，也不会找到上述对应的value，因为你给予的str3，在内存中的地址根本就是不存在的。
        }
        
        
        
        private String[][] existedScope = {{"1","A"},{"1","B"},{"2","A"},{"2","B"}};
        private String[][] newScope     = {{"1","A"},{"1","B"},{"2","A"},{"2","B"}};
        
        @Test
        public void checkStrArraykey2(){
            System.out.println(check(existedScope,newScope));
        }
        
        public boolean check(String[][] existedScope,String[][] newScope){
            Map<String[],Boolean> existedScopeMap = new HashMap();
            for(String[] sa: existedScope){
                existedScopeMap.put(sa,true);
                System.out.println(existedScopeMap.get(sa));
            }
            
            for(String[] scope:newScope){
                System.out.println(existedScopeMap.get(scope));
            }
            return false;
        }
}


//使用的是散列表的实现方式。
class MyMap_HashTable{
    
}

//线程安全的map
class MyMap_ConcurrentHashMap{
    
    
}

/*
HashMap和Hashtable都实现了Map接口，但决定用哪一个之前先要弄清楚它们之间的分别。主要的区别有：线程安全性，同步(synchronization)，以及速度。

    1.HashMap几乎可以等价于Hashtable，除了HashMap是非synchronized的，并可以接受null(HashMap可以接受为null的键值(key)和值(value)，而Hashtable则不行)。

    2.HashMap是非synchronized，而Hashtable是synchronized，这意味着Hashtable是线程安全的，多个线程可以共享一个Hashtable；而如果没有正确的同步的话，多个线程是不能共享HashMap的。Java 5提供了ConcurrentHashMap，它是HashTable的替代，比HashTable的扩展性更好。

    3.另一个区别是HashMap的迭代器(Iterator)是fail-fast迭代器，而Hashtable的enumerator迭代器不是fail-fast的。所以当有其它线程改变了HashMap的结构（增加或者移除元素），将会抛出ConcurrentModificationException，但迭代器本身的remove()方法移除元素则不会抛出ConcurrentModificationException异常。但这并不是一个一定发生的行为，要看JVM。这条同样也是Enumeration和Iterator的区别。

    4.由于Hashtable是线程安全的也是synchronized，所以在单线程环境下它比HashMap要慢。如果你不需要同步，只需要单一线程，那么使用HashMap性能要好过Hashtable。

    5.HashMap不能保证随着时间的推移Map中的元素次序是不变的。
    
HashMap可以通过下面的语句进行同步：
Map m = Collections.synchronizeMap(hashMap);
 * */

//使用的是红黑树的实现方式。
class MyMap_TreeMap{
    
}


class MyMap_Properties{

}

class MapUtil{
    public static void testTraverse(){
        Map<String, String> map = new HashMap<String, String>();
        map.put("A","wang");
        map.put("B","zhang");
        visitMap_EntrySet(map);
        visitMap_KeySet(map);
        visitMap_Values(map);
        visitMap_iterator(map);
    }
    
    /*遍历一个map对象。这种方法是错误的。
    public static void visitMap_forNum(Map<?,?> map){
        for(int i = 0 ; i < map.size() ; i++){ 
            System.out.println(map.get(i).toString());
        }  
    }*/
    
    //遍历一个map对象。当数据上万时，这种方法的效率更高。
    public static void visitMap_EntrySet(Map<?,?> map){
        for(Map.Entry<?, ?> entry:map.entrySet()){  
            System.out.println(entry.getKey()+": "+entry.getValue());
        }  
    }
    
    //遍历一个map对象。
    public static void visitMap_KeySet(Map<?,?> map){
        for(Object key: map.keySet()){  
            System.out.println(key.toString()+": "+map.get(key));
        }  
    }
    
    //遍历一个map对象。
    public static void visitMap_Values(Map<?,?> map){
        for(Object value: map.values()){
            System.out.println("Value = " + value); 
        }
    }
    
    //遍历一个map对象iterator。
    public static void visitMap_iterator(Map<?,?> map){
        Iterator<?> entries = map.entrySet().iterator();  
        while (entries.hasNext()) {  
            Map.Entry<?, ?> entry = (Entry<?, ?>) entries.next();  
            System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());  
        }  
    }
    
}

class Point{
    int x;
    int y;
    Point(int x,int y){
        this.x=x;
        this.y=y;
    }
}


