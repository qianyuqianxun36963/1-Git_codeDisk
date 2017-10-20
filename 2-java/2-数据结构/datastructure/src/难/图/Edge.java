package ��.ͼ;

import ��.��.I_Node;

//˫��ʽ�洢�ı߶���

public class Edge {
	public static final int NORMAL = 0;
	public static final int MST = 1;	//MST��
	public static final int CRITICAL = 2;//�ؼ�·���еı�
	private int weight;		//Ȩֵ
	private Object info;	//�ߵ���Ϣ
	private I_Node edgePosition;		//���ڱ߱��е�λ��
	private I_Node firstVexPosition;	//�ߵĵ�һ������ڶ�����
	private I_Node secondVexPosition;	//�ڶ�����е�λ��
	private I_Node edgeFirstPosition;	//���ڵ�һ������������ڽӣ����ڽӣ��߱��е�λ��
	private I_Node egdeSecondPosition;//������ͼ�о���������������ڽӱ��е�λ��
	private int type;		//�ߵ�����
	private int graphType;	//����ͼ������
	//���췽��:��ͼG������һ���±�,�䶥��Ϊu��v
	public Edge(I_Graph g, Vertex u, Vertex v, Object info){
		this(g,u,v,info,1);
	}
	public Edge(I_Graph g, Vertex u, Vertex v, Object info, int weight) {
		this.info = info;
		this.weight = weight;
		edgePosition = g.insert(this);
		firstVexPosition = u.getVexPosition();
		secondVexPosition = v.getVexPosition();
		type = Edge.NORMAL;
		graphType = g.getType();
		if (graphType==I_Graph.UndirectedGraph){
			//���������ͼ,��Ӧ������������������ڽӱ߱�
			edgeFirstPosition = u.getAdjacentEdges().insertLast(this);
			egdeSecondPosition = v.getAdjacentEdges().insertLast(this);
		}else {
			//���������ͼ,�߼�����ʼ����ڽӱ߱�,��ֹ������ڽӱ߱�
			edgeFirstPosition = u.getAdjacentEdges().insertLast(this);
			egdeSecondPosition = v.getReAdjacentEdges().insertLast(this);
		}
	}
	
	//get&set methods
	public Object getInfo(){ return info;}
	public void setInfo(Object obj){ this.info = obj;}
	public int getWeight(){ return weight;}
	public void setWeight(int weight){ this.weight = weight;}
	public Vertex getFirstVex(){ return (Vertex)firstVexPosition.getData();}
	public Vertex getSecondVex(){ return (Vertex)secondVexPosition.getData();}
	public I_Node getFirstVexPosition(){ return firstVexPosition;}
	public I_Node getSecondVexPosition(){ return secondVexPosition;}
	public I_Node getEdgeFirstPosition(){ return edgeFirstPosition;}
	public I_Node getEdgeSecondPosition(){ return egdeSecondPosition;}
	public I_Node getEdgePosition(){ return edgePosition;}
	
	//��ߵ�������صķ���
	public void setToMST(){ type = Edge.MST;}
	public void setToCritical(){ type = Edge.CRITICAL;}
	public void resetType(){ type = Edge.NORMAL;}	
	public boolean isMSTEdge(){ return type==Edge.MST;}
	public boolean isCritical(){ return type==Edge.CRITICAL;}
}
