package ��.ͼ;

import ��.��.*;
import ��.ջ�Ͷ���.*;
import ��.�쳣.UnsupportedOperation;

public class Graph_Direct extends Graph_Abstract {
	
	public Graph_Direct() {
		super(I_Graph.DirectedGraph);
	}
	
	//ɾ��һ������v
	public void remove(Vertex v) {
		while (v.getOutDeg()>0){
			Edge e = (Edge)v.getAdjacentEdges().first().getData();
			remove(e);
		}
		while (v.getInDeg()>0){
			Edge e = (Edge)v.getReAdjacentEdges().first().getData();
			remove(e);
		}
		vertexs.remove(v.getVexPosition());
	}

	//ɾ��һ����e
	public void remove(Edge e) {
		edges.remove(e.getEdgePosition());
		Vertex u = e.getFirstVex();
		Vertex v = e.getSecondVex();
		u.getAdjacentEdges().remove(e.getEdgeFirstPosition());
		v.getReAdjacentEdges().remove(e.getEdgeSecondPosition());
	}
	
	//���ش�uָ��v�ıߣ��������򷵻�null
	public Edge edgeFromTo(Vertex u, Vertex v){
		LinkedList adjEdge = u.getAdjacentEdges();
		I_Iterator it = adjEdge.elements();
		for(it.first(); !it.isDone(); it.next()){
			Edge e = (Edge)it.currentItem();
			if (e.getSecondVex()==v)
				return e;
		}
		return null;
	}
	
	//���ش�u��������ֱ�ӵ�����ڽӶ���
	public I_Iterator adjVertexs(Vertex u){
		LinkedList adjVex = new LinkedListDLNode();
		LinkedList adjEdge = u.getAdjacentEdges();
		I_Iterator it = adjEdge.elements();
		for(it.first(); !it.isDone(); it.next()){
			Edge e = (Edge)it.currentItem();
			adjVex.insertLast(e.getSecondVex());
		}
		return adjVex.elements();
	}
	
	//������ͼ����С������,���������ͼ��֧�ִ˲���
	public void generateMST() throws UnsupportedOperation{
		throw new UnsupportedOperation("��֧�ִ˲���");
	}

	//������ͼ����������,����ͼ��֧�ִ˲���
	public I_Iterator toplogicalSort(){
		LinkedList topSeq = new LinkedListDLNode();//��������
		Stack s = new StackSLinked();
		I_Iterator it = getVertex();
		for(it.first(); !it.isDone(); it.next()){//��ʼ�����㼯Ӧ����Ϣ
			Vertex v = (Vertex)it.currentItem();
			v.setAppObj(Integer.valueOf(v.getInDeg()));
			if (v.getInDeg()==0) s.push(v);
		}
		while (!s.isEmpty()){
			Vertex v = (Vertex)s.pop();
			topSeq.insertLast(v);//������������
			I_Iterator adjIt = adjVertexs(v);
			for(adjIt.first(); !adjIt.isDone(); adjIt.next()){
				Vertex adjV = (Vertex)adjIt.currentItem();
				int in = getTopInDe(adjV)-1;
				setTopInDe(adjV, in);
				if (getTopInDe(adjV)==0) s.push(adjV);
			}//for adjIt
		}//while
		if (topSeq.getSize()<getVexNum()) return null;
		else return topSeq.elements();
	}

	//�������޻�ͼ�Ĺؼ�·��,����ͼ��֧�ִ˲���
	public void criticalPath(){
		I_Iterator it = toplogicalSort();
		resetEdgeType();	//����ͼ�и��ߵ�������Ϣ
		if (it==null) return;
		LinkedList reTopSeq = new LinkedListDLNode();
		for(it.first(); !it.isDone(); it.next()){	//��ʼ������ve��vl������������������
			Vertex v = (Vertex)it.currentItem();
			Vtime time = new Vtime(0,Integer.MAX_VALUE);//ve=0,vl=Integer.MAX_VALUE
			v.setAppObj(time);
			reTopSeq.insertFirst(v);
		}
		for(it.first(); !it.isDone(); it.next()){	//�����������������ve
			Vertex v = (Vertex)it.currentItem();
			I_Iterator adjIt = adjVertexs(v);
			for(adjIt.first(); !adjIt.isDone(); adjIt.next()){
				Vertex adjV = (Vertex)adjIt.currentItem();
				Edge e = edgeFromTo(v,adjV);
				if (getVE(v)+e.getWeight()>getVE(adjV))	//�������翪ʼʱ��
					setVE(adjV, getVE(v)+e.getWeight());
			}
		}
		Vertex dest = (Vertex)reTopSeq.first().getData();
		setVL(dest, getVE(dest));	//���û��vl=ve
		I_Iterator reIt = reTopSeq.elements();
		for(reIt.first(); !reIt.isDone(); reIt.next()){	//�����������������vl
			Vertex v = (Vertex)reIt.currentItem();
			I_Iterator adjIt = adjVertexs(v);
			for(adjIt.first(); !adjIt.isDone(); adjIt.next()){
				Vertex adjV = (Vertex)adjIt.currentItem();
				Edge e = edgeFromTo(v,adjV);
				if (getVL(v)>getVL(adjV)-e.getWeight())	//������ٿ�ʼʱ��
					setVL(v, getVL(adjV)-e.getWeight());
			}
		}
		I_Iterator edIt = edges.elements();
		for(edIt.first(); !edIt.isDone(); edIt.next()){	//��ؼ��
			Edge e = (Edge)edIt.currentItem();
			Vertex u = e.getFirstVex();
			Vertex v = e.getSecondVex();
			if (getVE(u)==getVL(v)-e.getWeight()) e.setToCritical();
		}
	}
	
	private int getTopInDe(Vertex v){
		return ((Integer)v.getAppObj()).intValue();
	}
	private void setTopInDe(Vertex v, int indegree){
		v.setAppObj(Integer.valueOf(indegree));
	}
	private int getVE(Vertex v){
		return ((Vtime)v.getAppObj()).getVE();
	}
	private int getVL(Vertex v){
		return ((Vtime)v.getAppObj()).getVL();
	}
	private void setVE(Vertex v, int ve){
		((Vtime)v.getAppObj()).setVE(ve);
	}
	private void setVL(Vertex v, int vl){
		((Vtime)v.getAppObj()).setVL(vl);
	}
}
