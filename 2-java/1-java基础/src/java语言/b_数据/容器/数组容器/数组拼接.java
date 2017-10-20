package java语言.b_数据.容器.数组容器;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class 数组拼接 {
	public static void main(String[] args) {
		String a[] = { "A", "E", "I" };
	    String b[] = { "O", "U" };
	    System.out.println(linkStringArray(a,b));
	}
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static String linkStringArray(String a[],String b[]){
		List list = new ArrayList(Arrays.asList(a));
	    list.addAll(Arrays.asList(b));
		Object[] c = list.toArray();
		return Arrays.toString(c);
	}

//	public static <T> T[] concat(T[] first, T[] second) {
//		T[] result = (T[]) ArrayUtils.addAll(first, second);
//		
//	}
//	
//	static String[] concat(String[] first, String[] second) {
//		String[] both = (String[]) ArrayUtils.addAll(first, second);
//	}
	
}

