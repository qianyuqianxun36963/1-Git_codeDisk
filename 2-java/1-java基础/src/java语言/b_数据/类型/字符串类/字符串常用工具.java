package java语言.b_数据.类型.字符串类;

public class 字符串常用工具 {
    public static void main(String args[]){
        String string = "   /#path#/ ";
        String result1 = util.mytrim(string,"/");
        String result2 = util.mytrim(result1,"#");
        System.out.println(result2);
    }
}

//去除头尾特定的字符
class util{
    public static String mytrim(String str,String tag){
        str = str.trim();
        while(str.startsWith(tag)) str = str.substring(1);
        while(str.endsWith(tag)) str = str.substring(0,str.length()-1);
        return str;
    }
}