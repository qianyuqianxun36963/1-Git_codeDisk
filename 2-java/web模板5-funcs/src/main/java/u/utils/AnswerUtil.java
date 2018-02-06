package u.utils;

/**
 * 将选择题数字类型的答案转成char
 * @author HuangJin
 * @version 2017年11月21日下午9:11:24
 */
public class AnswerUtil {
	
	/**
	 * 将页面答案0 1 2 转换成 A B C
	 * @author HuangJin
	 * @version 2017年11月30日上午9:23:32
	 */
	public static String toChar(String[] str){
		StringBuilder sb = new StringBuilder();
		String answer="";
			if(str != null){
				for (int i = 0; i < str.length; i++) {
					int a = Integer.parseInt(str[i])+65;
					sb.append(String.valueOf((char)a)).append(";");
				}
				answer = sb.substring(0, sb.length()-1);
			}
		return answer;
	}
	/*
	 * 将数据库的答案 A B C 转换成0 1 2
	 */
	public static String[] toString(String str){
		char[] array = str.toCharArray();
		String[] answer = new String[array.length];
		for (int i = 0; i < array.length; i++) {
			answer[i]= String.valueOf((int)array[i]-65);
		}
		return answer;
	}
}
