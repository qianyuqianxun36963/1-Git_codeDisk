package java����.e_�Խ�.������ʽ;

import java.util.regex.*;

public class ������ʽ {

	private static Pattern pattern; //����ֻ�ܶ���Ϊ���Ա����Ϊ������Ϊ�ຯ����
	private static Matcher matcher;
	
	public static void main(String[] args) {
		String regexstr="(&&)+";               //ע�⡮()���͡�[]��������!!!, []�е��ǻ��壬ֻȡ���е�ֵ��һ��,��(),�����ӱ��ʽ.
		//String regexstr="<#[^<]*#>";
		//String regexstr="<#[\\s\\S]*#>";
		//String regexstr="%[^%]*%"; //ƥ��%~%֮��û�С�%�����Ӿ䡣��[^%]�� ��ʾ�ǡ�%�����ַ�����*���ڡ�[^%]�����棬��ʾ�������ַ�����0�λ��Ρ�
		//String regexstr2="%[\\s\\S]*%"; //���ֵĻ��Ὣͷβ������%��֮�������ȫ�滻��
		
		//String searchstr="123<#ע�� 1#>%note1%456<#ע#��2#>%note2%789";
		//String searchstr="get-command;<#;cmd ���windows;powershell���.net�ܹ� ������C# �����ĳ���;�ܶ����cmd�У�powershellҲ�С� ���磺'net user'��'cd **'�ȡ�;��Щ���cmdû�У�powershell���еġ����磺get-command;#>";
		String searchstr="123<#ע�� 1#>&&&&%note1%456<#ע�� 2#>%note2%789";
		
		Matcher matcher=matchString(regexstr,searchstr);
		
		//���� ƥ����һ�µ��ַ����滻Ϊ�������ַ�����
		String removedstr = matcher.replaceAll(""); 
		System.out.println(removedstr);
		
		//���ʱ�ƥ����������ַ�����
		try{
			String resultstr= matcher.group();
			System.out.println(resultstr);
			
			matcher.find(); //���ϴλ���������һ��ƥ������ַ�����
			String resultstr2 = matcher.group();
			System.out.println(resultstr2);
		}
		catch (IllegalStateException e){}
		
	}
	
	
    public static Matcher matchString(String regex, String input) {
    	pattern=Pattern.compile(regex,Pattern.CASE_INSENSITIVE);
        matcher=pattern.matcher(input);
        try{
			matcher.find(); //����ǧ�򲻿����١���Ȼ����ûȥ�ѡ����������˵�һ���������������ַ������������һ�����ǵ��÷��ص�matcher�����ٴΣ�matcher.find
			String resultstr = matcher.group();
			System.out.println(resultstr);
        }
		catch (IllegalStateException e){
			System.out.println("no matcher");
		}
    	return matcher;
	}
}
