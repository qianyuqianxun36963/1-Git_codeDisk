package java语言.b_数据.类型.字符串类;

public class 转化字符串供定义字符串对象用 {
    @SuppressWarnings("unused")
    public static void main(String args[]){
        String s="this is String \"where\" to change path:  C:\\wang\\ya\\test.txt";
        System.out.println(s);
        String s2=changestr(s);
        System.out.println(s2);
    }
    
    public static String changestr(String strToChange){
        String s = strToChange.replaceAll("\"", "\'");
        //System.out.println(s);
        String s2 = s.replaceAll("\\\\", "/");
        return s2;
    }
    
    
}
