package java语言.b_数据.类型.字符串类;

import org.apache.commons.lang.StringUtils;

public class 字符串常用工具 {
    public static void main(String args[]){
        String string = "   /#path#/ ";
        String result1 = util.mytrim(string,"/");
        String result2 = util.mytrim(result1,"#");
        System.out.println(result2);
        
        String[] strArr = {"hello","world"};
        System.out.println(util.concatStrArr(strArr));
    }
}

//去除头尾特定的字符
class util{
    //去掉首尾特殊字符
    public static String mytrim(String str,String tag){
        str = str.trim();
        while(str.startsWith(tag)) str = str.substring(1);
        while(str.endsWith(tag)) str = str.substring(0,str.length()-1);
        return str;
    }
    
    //拼接字符串
    public static String concatStrArr(String[] strArr){
        return StringUtils.join(strArr, ",");
    }
}