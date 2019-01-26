package java语言.b_数据.容器.实用容器.基础;

import java.util.HashMap;
import java.util.Map;

public class Map初始化问题 {
    Map map = new HashMap(32);
    
    public void test(){
        for(int i = 0 ; i<24 ; i++){
            map.put(i, i);
        }
    }
}

/*
 * 
//实际上map的分配大小是根据 7/(0.75) + 1 = 10 去分配大小的;  
//则当元素添加到7个;所以不会触发resize()；  
Map<String, Object> map = Maps.newHashMapWithExpectedSize(7);  
  
  
 public static <K, V> HashMap<K, V> newHashMapWithExpectedSize(int expectedSize) {  
   return new HashMap<K, V>(capacity(expectedSize));  
 }  
  
 static int capacity(int expectedSize) {//expectedSize = 7；这传进去个7，返回的是10；  
   if (expectedSize < 3) {  
     checkNonnegative(expectedSize, "expectedSize");  
     return expectedSize + 1;  
   }  
   if (expectedSize < Ints.MAX_POWER_OF_TWO) {   //MAX_POWER_OF_TWO = 1 << (Integer.SIZE - 2); //Integer.SIZE = 32;  
     // This is the calculation used in JDK8 to resize when a putAll  
     // happens; it seems to be the most conservative calculation we  
     // can make.  0.75 is the default load factor.  
     return (int) ((float) expectedSize / 0.75F + 1.0F);  
   }  
   return Integer.MAX_VALUE; // any large value //MAX_VALUE = 0x7fffffff;  int类型的最大值啦；二进制 就是31个1的数字。  
 }  
  
   public HashMap(int initialCapacity) {//这传入的initialCapacity = 10；  
       this(initialCapacity, DEFAULT_LOAD_FACTOR); //static final float DEFAULT_LOAD_FACTOR = 0.75f;  
   }  
  
//Java 1.7是如下算法：结果算出来是capacity = 16；  
       int capacity = 1;  
       while (capacity < initialCapacity)//initialCapacity = 10 传进来的  
           capacity <<= 1;  
          
    threshold = (int) (capacity * loadFactor);//loadFactor = 0.75 默认的，这个扩容极限值是16 * 0.75 = 12即threshold = 12；  
//什么时候resize  
//在添加一个元素即addEntry()的时候有如下判断  
        if (size++ >= threshold)  
           resize(2 * table.length);  
      
//Java 1.8是如下算法：结果算出来是16；额，我是debug看到的是16，下面的移来移去的，看不懂。  
this.threshold = tableSizeFor(initialCapacity);//initialCapacity = 10；穿进去是10，返回的是16；  
  
static final int tableSizeFor(int cap) {  
       int n = cap - 1;  
       n |= n >>> 1;  
       n |= n >>> 2;  
       n |= n >>> 4;  
       n |= n >>> 8;  
       n |= n >>> 16;  
       return (n < 0) ? 1 : (n >= MAXIMUM_CAPACITY) ? MAXIMUM_CAPACITY : n + 1;  
   }  
//什么时候resize  
//在添加一个元素即putVal()的时候有如下判断  
       if (++size > threshold)// 我debug的时候，看到这个threshold变成12啦，不知道什么时候，16变12啦；  
           resize();  
  
//为什么呢，不是应该在resize方法里面重置大小之后再修改这个阈值的吗。具体的不知道哪里被修改啦，还是说我的debug的不对。等空了在说吧。  
 * 
 * */
