package java����.b_����.����.�ַ�����;

import java.util.Scanner;

public class ���˳������ַ� {

	private static String next;

	//�������� This Is TEST Ȼ��س���Ч����
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

	//���˳����еĴ�д��ĸ�� 
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
