package huawei;

import java.util.Map;
import java.util.HashMap;

public class ×Ö·û´®ÖÐ×Ö·û¸öÊý {
	public static void main(String args[]){
		System.out.println(getCharNum("this is myword I", 'i'));
	}
	
	public static int getCharNum(String str,char c){
		char s;int count = 0;
		Map<Character,Integer> map = new HashMap<Character,Integer>();
		for(int i=0;i<str.length();i++){
			s = str.charAt(i);
			s = Character.toLowerCase(s);
			if(map.get(s)==null){
				map.put(s, 1);
			}
			else{map.put(s, (int)map.get(s)+1);}
		}
		if(map.get(Character.toLowerCase(c))!=null) count = map.get(Character.toLowerCase(c));
		return count;
	}
}
//
//import java.util.Scanner;
//import java.util.Map;
//import java.util.HashMap;
//
//public class Main {
//	public static void main(String[] args){
//        Scanner s = new Scanner(System.in);
//            String str = s.next();
//            char c = s.next().charAt(0);
//            int i = getCount(str,c);
//            System.out.println(i);
//    }
//	
//	public static int getCount(String str,char c){
//		char s;int count = 0;
//		Map<Character,Integer> map = new HashMap<Character,Integer>();
//		for(int i=0;i<str.length();i++){
//			s = str.charAt(i);
//			s = Character.toLowerCase(s);
//			if(map.get(s)==null){
//				map.put(s, 1);
//			}
//			else{map.put(s, (int)map.get(s)+1);}
//		}
//        if(map.get(Character.toLowerCase(c))!=null) count = map.get(Character.toLowerCase(c));
//		return count;
//	}
//}
