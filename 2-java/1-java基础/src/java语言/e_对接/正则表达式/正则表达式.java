package java语言.e_对接.正则表达式;

import java.util.regex.*;

public class 正则表达式 {

	private static Pattern pattern; //这里只能定义为类成员，因为主函数为类函数。
	private static Matcher matcher;
	
	public static void main(String[] args) {
		String regexstr="(&&)+";               //注意‘()’和‘[]’的区别!!!, []中的是或含义，只取所列的值得一个,而(),才是子表达式.
		//String regexstr="<#[^<]*#>";
		//String regexstr="<#[\\s\\S]*#>";
		//String regexstr="%[^%]*%"; //匹配%~%之间没有‘%’的子句。“[^%]” 表示非‘%’的字符。“*”在“[^%]”后面，表示这样的字符出现0次或多次。
		//String regexstr2="%[\\s\\S]*%"; //这种的话会将头尾两个‘%’之间的内容全替换。
		
		//String searchstr="123<#注释 1#>%note1%456<#注#释2#>%note2%789";
		//String searchstr="get-command;<#;cmd 针对windows;powershell针对.net架构 比如用C# 开发的程序;很多命令，cmd有，powershell也有。 例如：'net user'；'cd **'等。;有些命令，cmd没有，powershell是有的。例如：get-command;#>";
		String searchstr="123<#注释 1#>&&&&%note1%456<#注释 2#>%note2%789";
		
		Matcher matcher=matchString(regexstr,searchstr);
		
		//将于 匹配相一致的字符串替换为所给的字符串。
		String removedstr = matcher.replaceAll(""); 
		System.out.println(removedstr);
		
		//访问被匹配出来的子字符串。
		try{
			String resultstr= matcher.group();
			System.out.println(resultstr);
			
			matcher.find(); //在上次基础上找下一次匹配的子字符串。
			String resultstr2 = matcher.group();
			System.out.println(resultstr2);
		}
		catch (IllegalStateException e){}
		
	}
	
	
    public static Matcher matchString(String regex, String input) {
    	pattern=Pattern.compile(regex,Pattern.CASE_INSENSITIVE);
        matcher=pattern.matcher(input);
        try{
			matcher.find(); //这里千万不可以少。不然根本没去搜。这里搜索了第一个符合条件的子字符串。如果找下一个，记得用返回的matcher对象再次，matcher.find
			String resultstr = matcher.group();
			System.out.println(resultstr);
        }
		catch (IllegalStateException e){
			System.out.println("no matcher");
		}
    	return matcher;
	}
}
