package java语言.d_系统.io操作;

import java.util.*;

public class 屏幕输入输出 {
	public static void main(String args[]){
		Scanner reader=new Scanner(System.in);
		int N = reader.nextInt();
		String S = reader.next();
		System.out.println(N+" "+S);
	}
}

