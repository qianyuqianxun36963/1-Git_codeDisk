package java����.e_�Խ�.�ű�;

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
	
	//�����������Ĭ�ϵĽŲ��洢·����ʵ��ʹ��ʱ�������޸ģ��磺FileUtils.setBasepath("/src/java����");
	private static String basepath=getcurpath()+"/src/java����/�Խ�/�ű�\\shellsfiles/";
	private static Pattern pattern; //����ֻ�ܶ���Ϊ���Ա����Ϊ������Ϊ�ຯ����
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
	//�������ļ������ָ��������뷽ʽ��
	private static String readfiletostring(String filename,String segment,String codetype,String note,Boolean hasnote) throws IOException{
		String filepath = basepath+filename;//·��д��������
		BufferedReader br=new BufferedReader(new InputStreamReader(new FileInputStream(filepath),codetype));
		String s=null; 
		StringBuffer sb=new StringBuffer();
		while((s=br.readLine())!=null){
			if(s.length()<1) continue;
			sb.append(s+segment);
		}
		String tempresult=removeLastSeg(sb,segment);
		//System.out.println(tempresult);
		
		//ȥ��ע�Ͳ���:
		String removedstr = "";
		if(hasnote)	removedstr = tempresult; //���hasnote==true��ʾ����ע�ͣ����ﲻ��ȥע�ʹ���.
		else removedstr = removenote(tempresult,note);
		
		String result=removedstr;
		if(!hasnote) result=removeLastSeg(removedstr,segment);
		
		result=combineSeg(result,segment);
		
		return(result);
	}
	
	private static String removenote(String tempresult,String note){
		//ȥ��ע�Ͳ���
		String regexstr="";
		if (note=="%") regexstr="%[^%]*%";		//�������ƥ����.bat �ļ����ע�Ͳ��֡�
		if (note=="#") regexstr="<#[^<]*#>";	//�������ƥ����.ps1    �ļ����ע�Ͳ���,ע���в��ܺ��С�<������
		Matcher matcher = matchString(regexstr,tempresult);
		//System.out.println(tempresult);
		//���� ƥ����һ�µ��ַ����滻Ϊ�������ַ�����
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
			matcher.find(); //����ǧ�򲻿����١���Ȼ����ûȥ�ѡ����������˵�һ���������������ַ������������һ�����ǵ��÷��ص�matcher�����ٴΣ�matcher.find
        }
		catch (IllegalStateException e){}
    	return matcher;
	}
	
	// ���ݴ��ļ���һ�㷽����
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
	
	//��˫���ź�'\'���ַ����ǲ���ֱ�ӷ���String���������ģ���������һ�¼򵥱任��������ļ�������ݿ���ֱ�Ӹ���ճ����String��������
	public static String changestr(String strToChange){
		String s = strToChange.replaceAll("\"", "\'");
		String s2 = s.replaceAll("\\\\", "/");
		System.out.println(s2);
		return s2;
	}
}
