package wangyi;

import java.util.*;

/* 
 ���׶�԰��n��С��������Ϊһ�����飬������һ������һ�����Ϊ(0~n-1)��������һЩ����������һЩ��Ů����������'B'��ʾ��Ů����'G'��ʾ��С�����Ƕ�����Ƥ����һ���������ŵ���Ů����ʱ��ͻᷢ��ì�ܡ���Ϊ�׶�԰����ʦ������Ҫ����������Ů������Ů������������������١���ֻ����ԭ�����Ͻ��е�����ÿ�ε���ֻ�������ڵ�����С���ѽ���λ�ã�������Ҫ������ɶ������������Ҫ�����������Ҫ�������ٴο���������������١����磺
GGBBG -> GGBGB -> GGGBB
������ʹ֮ǰ��������Ů���ڱ�Ϊһ�����ڣ���Ҫ��������2�� 
��������:
�������ݰ���һ������Ϊn��ֻ����G��B���ַ���.n������50.*/

public class ��Ů�������� {
	public static void main(String args[]){
		Scanner in = new Scanner(System.in);
		int min_boy=0, num_boy=0;  //������ȫ���������Ҫ�Ĵ���
		int min_girl=0,num_girl=0; //��Ů��ȫ���������Ҫ�Ĵ���
		String childs = in.next();
		
		for(int i = 0;i<childs.length();i++){
			if(childs.charAt(i)=='B'){num_boy++;min_boy+=(i+1);}
			else{num_girl++;min_girl+=(i+1);}
		}
		min_boy-=(num_boy+1)*num_boy/2;
		min_girl-=(num_girl+1)*num_girl/2;
		
		if(min_boy<min_girl) System.out.println(min_boy);
		else  System.out.println(min_girl);
	}
}
