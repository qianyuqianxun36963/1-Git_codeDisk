package java����.b_����.����.�ַ�����;

import org.junit.Test;

public class �ַ�������ת {
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
