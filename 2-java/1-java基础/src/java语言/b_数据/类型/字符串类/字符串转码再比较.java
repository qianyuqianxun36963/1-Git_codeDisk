package java语言.b_数据.类型.字符串类;

import java.io.UnsupportedEncodingException;

import org.junit.Test;

public class 字符串转码再比较 {
    @Test
    public void test() throws UnsupportedEncodingException{
        String defaultString = "字符串";
        
        String str_utf8 = new String("字符串".getBytes(),"UTF-8");
        String str_gb2312 = new String("字符串".getBytes(),"gb2312");
        
        if(checkStringEqual(defaultString, str_utf8)){
            System.out.println("字符串相等");
        }else{
            System.out.println("字符串不相等");
        }
    }
    
    public boolean checkStringEqual(String a,String b){
        String stra;
        try {
            stra = new String(a.getBytes(),"UTF-8");
            String strb = new String(b.getBytes(),"UTF-8");
            return stra.equals(strb);
        } catch (UnsupportedEncodingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }
        
    }
}


