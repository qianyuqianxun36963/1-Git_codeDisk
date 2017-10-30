package java语言.e_对接.脚本;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FileUtils {
	
	public static void main(String args[]) throws IOException{
		String powershell = readPsFile("powershell.ps1","UTF-8",false);
		writetofile(powershell,basepath+"powershell_string.txt");
		System.out.println(powershell);
		
//		String cmdbatshell = readBatFile("batfile.bat","gbk",false);
//		writetofile(cmdbatshell,basepath+"batfile_string.txt");
//		System.out.println(cmdbatshell);
		
	}
	
	//这里给出的是默认的脚步存储路径，实际使用时，可以修改，如：FileUtils.setBasepath("/src/java语言");
	private static String basepath=getcurpath()+"/src/java语言/对接/脚本\\shellsfiles/";
	private static Pattern pattern; //这里只能定义为类成员，因为主函数为类函数。
	private static Matcher matcher;
	
	public static String getBasepath() {
		return basepath;
	}

	public static void setBasepath(String basepath) {
		FileUtils.basepath = getcurpath()+"/"+basepath+"/";
	}
	
	public static String getcurpath(){
		File directory = new File("");
		return directory.getAbsolutePath();
	}
	
	public static String getfileDir(String filePath){
		filePath=filePath.replaceAll("\\\\","/");
		return filePath.substring(0, filePath.lastIndexOf("/"));
	}
	
	public static String getfilename(String filePath){
		String temp[] = filePath.replaceAll("\\\\","/").split("/");
		String fileName = "";
		if(temp.length > 1){
		fileName = temp[temp.length - 1];
		}
		return fileName;
	};
    
	@SuppressWarnings("unused")
	private static void mikdir(String filePath){
		try{
			filePath = filePath.replace("\\", "/");
			String folderPath = filePath.substring(0,filePath.lastIndexOf("/"));
			File file = new File(folderPath);
			if(!file.isDirectory()){
				file.mkdirs();
			}
		}catch(Exception e){
		}
	}
	
	public static String readPsFile(String filename,String codetype,Boolean hasnote) throws IOException{
		String powershell = readfiletostring(filename,";",codetype,"#",hasnote);
		return powershell;
	}
	
	public static String readBatFile(String filename,String codetype,Boolean hasnote) throws IOException{
		String powershell = readfiletostring(filename,"&&",codetype,"%",hasnote);
		return powershell;
	}
	
	@SuppressWarnings({ "resource"})
	//参数：文件名，分隔符，编码方式，
	private static String readfiletostring(String filename,String segment,String codetype,String note,Boolean hasnote) throws IOException{
		String filepath = basepath+filename;//路径写法很随意
		BufferedReader br=new BufferedReader(new InputStreamReader(new FileInputStream(filepath),codetype));
		String s=null; 
		StringBuffer sb=new StringBuffer();
		while((s=br.readLine())!=null){
			if(s.length()<1) continue;
			sb.append(s+segment);
		}
		String tempresult=removeLastSeg(sb,segment);
		//System.out.println(tempresult);
		
		//去掉注释部分:
		String removedstr = "";
		if(hasnote)	removedstr = tempresult; //如果hasnote==true表示保留注释，这里不做去注释处理.
		else removedstr = removenote(tempresult,note);
		
		String result=removedstr;
		if(!hasnote) result=removeLastSeg(removedstr,segment);
		
		result=combineSeg(result,segment);
		
		return(result);
	}
	
	private static String removenote(String tempresult,String note){
		//去掉注释部分
		String regexstr="";
		if (note=="%") regexstr="%[^%]*%";		//这个正则，匹配了.bat 文件里的注释部分。
		if (note=="#") regexstr="<#[^<]*#>";	//这个正则，匹配了.ps1    文件里的注释部分,注释中不能含有‘<’符号
		Matcher matcher = matchString(regexstr,tempresult);
		//System.out.println(tempresult);
		//将于 匹配相一致的字符串替换为所给的字符串。
		String removedstr = matcher.replaceAll(""); 
		//System.out.println(removedstr);
		return(removedstr);
	};
	
	private static String combineSeg(String tempresult,String segment){
		String regexstr="("+segment+")+";
		Matcher matcher = matchString(regexstr,tempresult);
		String combinedstr = matcher.replaceAll(segment); 
		return combinedstr;
	}	
	
	private static String removeLastSeg(String s,String segment){
		String result=s; int end=0;
		while(result.trim().endsWith(segment)){
			end=result.lastIndexOf(segment);
			result=result.substring(0,end);
		}
		return result;
	}	
	
	private static String removeLastSeg(StringBuffer sb,String segment){
		String result=sb.toString(); int end=0;
		while(result.trim().endsWith(segment)){
			end=result.lastIndexOf(segment);
			result=result.substring(0,end).toString();
		}
		return result;
	}
	
	public static Matcher matchString(String regex, String input) {
    	pattern=Pattern.compile(regex,Pattern.CASE_INSENSITIVE);
        matcher=pattern.matcher(input);
        try{
			matcher.find(); //这里千万不可以少。不然根本没去搜。这里搜索了第一个符合条件的子字符串。如果找下一个，记得用返回的matcher对象再次，matcher.find
        }
		catch (IllegalStateException e){}
    	return matcher;
	}
	
	// 数据存文件的一般方法。
	public static void writetofile(String infotoWrite, String filePath) {
		String newStr=changestr(infotoWrite);
		try {
			File file = new File(filePath);
			file.createNewFile();
			FileWriter fw = new FileWriter(file);
			fw.write(newStr);
			fw.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//带双引号和'\'的字符串是不能直接放在String定义语句里的，这里做了一下简单变换，让输出文件里的内容可以直接复制粘贴到String定义语句里。
	public static String changestr(String strToChange){
		String s = strToChange.replaceAll("\"", "\'");
		String s2 = s.replaceAll("\\\\", "/");
		System.out.println(s2);
		return s2;
	}
}
