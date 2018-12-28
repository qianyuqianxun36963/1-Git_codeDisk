package java语言.b_数据.类型.字符串类;

import java.io.UnsupportedEncodingException;

import org.junit.Test;

public class 字符串转码再比较 {
    @Test
    public void test() throws UnsupportedEncodingException{
        String defaultString = "字符串";
        
        String str_utf8 = new String("字符串".getBytes(),"utf8");
        String str_gb2312 = new String("字符串".getBytes(),"gb2312");
        String str_gbk = new String("字符串".getBytes(),"gbk");
        
        
//        if(equals("", null)){
//            System.out.println("字符串相等");
//        }else{
//            System.out.println("字符串不相等");
//        }
//        
//        if(equals("", "")){
//            System.out.println("字符串相等");
//        }else{
//            System.out.println("字符串不相等");
//        }
//        
//        if(equals(null, null)){
//            System.out.println("字符串相等");
//        }else{
//            System.out.println("字符串不相等");
//        }
        
        if(equals(defaultString, str_utf8)){
            System.out.println("字符串相等");
        }else{
            System.out.println("字符串不相等");
        }
        
        if(equals(defaultString, str_gb2312)){
            System.out.println("字符串相等");
        }else{
            System.out.println("字符串不相等");
        }
        
        if(equals(defaultString, str_gbk)){
            System.out.println("字符串相等");
        }else{
            System.out.println("字符串不相等");
        }
    }
    
    public static boolean equals2(String str1, String str2) {
        return str1 == null ? str2 == null : str1.equals(str2);
    }
    
    public static boolean equals(String str1, String str2) throws UnsupportedEncodingException {
        String str1_utf8 = toUTF8(str1);
        String str2_utf8 = toUTF8(str2);
        return str1 == null ? str2 == null : str1_utf8.equals(str2_utf8);
    }
    
    public static String toUTF8(String str) throws UnsupportedEncodingException{
        if(str != null) {
            String strCode = getEncoding(str).toString();
            return new String(str.getBytes(strCode),"utf8");
        }
        return null;
    }
    
    //获取字符串编码不成功。。下面代码没用！
    public static String getEncoding(String str) {  
        String encode[] = new String[]{ "GBK","ISO-8859-1", "GB2312", "UTF-8", "GB18030", "Big5", "Unicode", "ASCII" };  
        for (int i = 0; i < encode.length; i++){  
            try {  
                String temp = new String(str.getBytes(encode[i]), encode[i]);
                if (str.equals(temp)) {  
                    return encode[i];  
                }  
            } catch (Exception ex) {  
            }  
        }  
        return "";  
    }  
    
}


