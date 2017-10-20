package java语言.b_数据.类型.字符串类;

import org.junit.Test;

public class 字符串次序反转 {
	@Test
	public void test() {
		String s = "hello";
		System.out.println(reverseString(s));
	}
	
	public String reverseString(String s) {
        char[] c = s.toCharArray();
        StringBuffer sb = new StringBuffer();
        for(int i = c.length-1;i>=0;i--)
        sb.append(c[i]);
        return sb.toString();
    }
}
