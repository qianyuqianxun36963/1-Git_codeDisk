package ��.ͼ.�����㷨;

import java.util.Scanner;

public class ��Դ���·�� {
	public static void main(String[] args) {
	BellmanFord bellmanFord=new BellmanFord();
	bellmanFord.init();
	if (bellmanFord.Bellman_Ford()) {
		for (int i = 0; i < bellmanFord.nodenum; i++) {
			System.out.print(bellmanFord.dist[i]);
		}
	}
	}
}

//�����д�����������
//������-���� �㷨ʵ��
class BellmanFord{
	static int maxnum=100,maxint=999;
    int nodenum,edgenum,source;
	
	Edge[] edge=new Edge[maxnum];
	int[] dist=new int[maxnum];
	
	class Edge{
		int u,v;//��㣬�յ�
		int weight;//�ߵ�Ȩ��
		Edge(int a,int b,int c){
			u=a;v=b;weight=c;
		}
	}
	
	@SuppressWarnings("resource")
	void init(){
		Scanner in=new Scanner(System.in);
		nodenum=in.nextInt();edgenum=in.nextInt();source=in.nextInt();
		//System.out.println(nodenum+" "+edgenum+" "+source);
		for (int i = 0; i < nodenum; i++) {
			dist[i]=maxint;
		}
		dist[source]=0;
		for (int i = 0; i < edgenum; i++) {
			edge[i]=new Edge(in.nextInt(),in.nextInt(),in.nextInt());
			if (edge[i].u==source) {
				dist[edge[i].v]=edge[i].weight;
			}
		}
	}
	
	void relax(int u,int v,int weight){
		if (dist[v]>dist[u]+weight) 
			dist[v]=dist[u]+weight;	
		}
	
	boolean Bellman_Ford(){
		for (int i = 0; i < nodenum-1; i++) {
			for (int j = 0; j <edgenum; j++) 
			    relax(edge[j].u, edge[j].v, edge[j].weight);
		}
		boolean flag=true;
		//�ж��Ƿ��и���·��
		for (int i = 0; i < edgenum; i++) {
			if (dist[edge[i].v]>dist[edge[i].u]+edge[i].weight) 
			{
				flag=false;
				break;
			}
		}
		return flag;
	}
	
}










