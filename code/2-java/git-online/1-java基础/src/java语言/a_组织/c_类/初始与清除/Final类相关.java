package java语言.a_组织.c_类.初始与清除;

public class Final类相关 {
    public static void main(String args[]){
        
        int[] x = new int[15];
        final int[] y=x;
        y[5] = 213;
        System.out.println(y[5]);
        y[5] = 321;
        System.out.println(y[5]);
        
//        int[] w = new int[15];
//        w[5]=123;
//        y = w;  //出错，final是对象引用恒定不变。一旦引用被初始化指向一个对象，就无法对它进行改变以指向另一个对象。
//        然而，对象其自身却是可以被修改的， Java并未提供使任何对象恒定不变的途径。
//        System.out.println(y[5]);
        
//        final int z = 12;
//        z = 21; //出错。
        
    }
}
