package java语言.b_数据.类型.字符串类;

import java.util.Scanner;

public class 过滤出特有字符 {

	private static String next;

	//可以输入 This Is TEST 然后回车看效果。
	public static void main(String[] args) {
		Scanner reader = new Scanner(System.in);
		StringBuffer result = new StringBuffer();
		next = reader.nextLine();
		String str[] = next.split(" ");
		for(int j=0;j<str.length;j++){
			String sub = filter(str[j]);
			if(!sub.equals("")){
				if(result.length()==0) result.append(sub); else result.append(" "+sub);}
			}
		System.out.println(result);
	}

	//过滤出其中的大写字母。 
	public static String filter(String S){
		char arr[] = S.toCharArray();
		StringBuffer sb = new StringBuffer();
		for(int i=0;i<arr.length;i++){
			if(arr[i]>='A'&&arr[i]<='Z'){
				sb.append(arr[i]);
			}
		}
		return sb.toString();
	}
}
