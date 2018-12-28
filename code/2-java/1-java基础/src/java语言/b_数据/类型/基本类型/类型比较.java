package java语言.b_数据.类型.基本类型;

import org.junit.Test;

public class 类型比较 {
    
    static Integer numberA = new Integer(100);
    static Integer numberB = new Integer(100);
    static Integer numberC = new Integer(200);
    
    @Test
    public void test(){
        /*包装类不能用‘==’进行比较!*/
        if(numberA == numberB){
            System.out.println("numberA equals numberB");
        }
        if(numberA == numberB){
            System.out.println("numberA equals numberC");
        }
        
        /*包装类要用‘equals’进行比较!*/
        if(numberA.equals(numberB)){
            System.out.println("numberA equals numberB");
        }
        if(numberA.equals(numberC)){
            System.out.println("numberA equals numberC");
        }
    }
}
