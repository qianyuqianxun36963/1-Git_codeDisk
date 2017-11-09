package java语言.b_数据.类型.字符串类;

public class 字符串中常见易错点 {
    public static void main(String args[]){
        stringInit();
        stringLengthParameter();
    }
    
    static void stringInit(){
        String s1 ="a";
        String s2 = s1 + "b";
        String s3 = "a" + "b";
        
        System.out.println(s2 == s3);
        System.out.println(s2 == "ab");
        System.out.println(s3 == "ab");
    }
    
    static void stringLengthParameter(){
        String s = "1234";
        System.out.println(s.length());

        String[] sarray = {"a","b","c"};
        System.out.println(sarray.length);
    }
}

//第一条语句打印的结果为 false，第二条语句打印的结果为 true，这说明 javac 编译可以对
//字符串常量直接相加的表达式进行优化，不必要等到运行期去进行加法运算处理，而是在编
//译时去掉其中的加号，直接将其编译成一个这些常量相连的结果。
