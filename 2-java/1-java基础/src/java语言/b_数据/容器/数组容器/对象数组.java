package java����.b_����.����.��������;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class �������� {
	public static void main(String[] args) {
//		Scanner in=new Scanner(System.in);
		
		int[] a=new int[4];
//		a[0]=in.nextInt();          //�����������������ֱ��ʹ�á�
		a[0]=1; 
		System.out.println(a[0]);
		
		Edge[] edge=new Edge[4];
		edge[0] = new Edge(1,2,3);  //����������ʹ��ʱ������Ҫ��ʵ����������� ����ֱ��ʹ�á�
//		edge[0].u=in.nextInt();
		edge[0].u=1;
		System.out.println(edge[0].u);

//		��������
//		ArrayList[] zoneArrows = new ArrayList[4](); //���ַ�ʽ�ǲ��еġ�
		ArrayList[] zoneArrows = new ArrayList[4];
		
//		ArrayList<Integer>[] typeArrays = new ArrayList<Integer>[4]();
//		ArrayList<Integer>[] typeArrows = new ArrayList<Integer>[4]; //����ȥ�������޶��Ϳ��ԡ����˷����޶�������Ķ�����ʽ�Ͳ����ˡ�
		ArrayList<Integer> zoneArrow = new ArrayList<Integer>(); 
		
		ArrayList al=new ArrayList();
		ArrayList al1=new ArrayList(); al1.add(111);
		ArrayList al2=new ArrayList(); al2.add("222");
		
		ArrayList[] ArrayListArrays = new ArrayList[4];
//		ArrayList<Integer> result = new ArrayList<Integer>[4]; //�ӷ����޶��Ͳ����ˡ�
		ArrayListArrays[0] = al;
		ArrayListArrays[1] = al1;
		ArrayListArrays[2] = al2;
		ArrayList al3 = new ArrayList(); al3.add("3");al3.add("33");al3.add("333");
		ArrayListArrays[3] = al3;
		visitList_every(ArrayListArrays);
		
//		��ѡ�����ַ�ʽ�������������涼ָ��ͬһ��ArrayList�������ã���Ȼ�ı�����ã�ȫ��Ԫ�ض����޸ģ�����û�£���
		ArrayList[] sameElementArrayListArrays = new ArrayList[]{al,al};
		sameElementArrayListArrays[0] = al1;
		sameElementArrayListArrays[1] = al2;
		visitList_every(sameElementArrayListArrays);
		
		ArrayList[] diffElementArrayListArrays = new ArrayList[]{new ArrayList(),new ArrayList()};
		diffElementArrayListArrays[0] = al1;
		diffElementArrayListArrays[1] = al2;
		visitList_every(diffElementArrayListArrays);
		
//		ArrayList[] nullArrayListArrays = new ArrayList[]{null,null};
//		nullArrayListArrays[0] = al; //NullPointerException
//		visitList_every(nullArrayListArrays);
		
//		��������	
		ArrayList<int[]> myList=new ArrayList<int[]>();
		myList.add(new int[]{2,3,0});
		myList.add(new int[]{1,2,3,4});
		myList.add(new int[]{2,5,6,1,5});
		//myList.add(new char[]{'a'});  //����ͨ������
		for(int[] intArr:myList){
			System.out.println(Arrays.toString(intArr));
		}
	}
	
	//����һ��list����
	public static void visitList_every(ArrayList[] zoneArrows){
		for(ArrayList zoneArrow: zoneArrows){
			for(Object value:zoneArrow){  
		        System.out.print(value+" ");
		    }  
		}
		System.out.println();
	}
}

class Edge{
	public int u,v;//��㣬�յ�
	int weight;//�ߵ�Ȩ��
	Edge(int a,int b,int c){
		u=a;v=b;weight=c;
	}
}

