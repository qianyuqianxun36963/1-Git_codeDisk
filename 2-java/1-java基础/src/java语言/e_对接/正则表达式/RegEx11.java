// strings/RegEx11.java
// TIJ4 Chapter Strings, Exercise 11, page 533 
/* Apply the regular expression
*	(?i)((^[aeiou])|(\\s+[aeiou]))\\w+[aeiou]\\b
* 	to
*	Arline ate eight apples and one orange while Anita hadn't any
*/
// (alternate solution) Note double \\ required for \\s+, \\w+ and \\b in compile(): 

package java����.e_�Խ�.������ʽ;

import java.util.regex.*;

public class RegEx11 {
	public static void main(String[] args) {
		Pattern p = Pattern.compile("(?i)((^[aeiou])|(\\s+[aeiou]))\\w+[aeiou]\\b");
		Matcher m = p.matcher("Arline ate eight apples and one orange while Anita hadn't any");
		
		while(m.find())	System.out.println("Match \"" + m.group() + "\" at " + m.start());
		
//		��������д�����һ�����ƣ�������һ�����⣬���Ƕ�ʧ��һ��ƥ��ֵ�������ݿ����������ơ�
//		if(m.find()){
//			while(m.find())	System.out.println("Match \"" + m.group() + "\" at " + m.start());
//		}
//		else System.out.println("no matcher is found");
		
	}
}