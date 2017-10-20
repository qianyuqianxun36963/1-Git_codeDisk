package ��.ͼ;

import ��.��.*;
import ��.ջ�Ͷ���.*;
import ��.�쳣.UnsupportedOperation;

public abstract class Graph_Abstract implements I_Graph {
	protected LinkedList vertexs;//�����
	protected LinkedList edges;	//�߱�
	protected int type;			//ͼ������
	
	public Graph_Abstract(int type){
		this.type = type;
		vertexs = new LinkedListDLNode();
		edges = new LinkedListDLNode();
	}
	
	//����ͼ������
	public int getType(){
		return type;
	}
	//����ͼ�Ķ�����
	public int getVexNum() {
		return vertexs.getSize();
	}
	
	//����ͼ�ı���
	public int getEdgeNum() {
		return edges.getSize();
	}
	
	//����ͼ�����ж���
	public I_Iterator getVertex() {
		return vertexs.elements();
	}

	//����ͼ�����б�
	public I_Iterator getEdge() {
		return edges.elements();
	}
	
	//���һ������v
	public I_Node insert(Vertex v) {
		return vertexs.insertLast(v);
	}

	//���һ����e
	public I_Node insert(Edge e) {
		return edges.insertLast(e);
	}

	//�ж϶���u��v�Ƿ��ڽӣ����Ƿ��бߴ�u��v
	public boolean areAdjacent(Vertex u, Vertex v) {
		return edgeFromTo(u,v)!=null;
	}
	
	//��ͼ����������ȱ���
	public I_Iterator DFSTraverse(Vertex v) {
		LinkedList traverseSeq = new LinkedListDLNode();//�������
		resetVexStatus();			//���ö���״̬
		DFS(v, traverseSeq);		//��v����������������
		I_Iterator it = getVertex();	//��ͼ��δ�����ʵ��������������������
		for(it.first(); !it.isDone(); it.next()){
			Vertex u = (Vertex)it.currentItem();
			if (!u.isVisited()) DFS(u, traverseSeq);
		}
		return traverseSeq.elements();
	}
	//������ȵĵݹ��㷨
	@SuppressWarnings("unused")
	private void DFSRecursion(Vertex v, LinkedList list){
		v.setToVisited();
		list.insertLast(v);
		I_Iterator it = adjVertexs(v);//ȡ�ö���v�������ڽӵ�
		for(it.first(); !it.isDone(); it.next()){
			Vertex u = (Vertex)it.currentItem();
			if (!u.isVisited()) DFSRecursion(u,list);
		}
	}
	//������ȵķǵݹ��㷨
	private void DFS(Vertex v, LinkedList list){
		Stack s = new StackSLinked();
		s.push(v);
		while (!s.isEmpty()){
			Vertex u = (Vertex)s.pop();
			if (!u.isVisited()){
				u.setToVisited();
				list.insertLast(u);
				I_Iterator it = adjVertexs(u);
				for(it.first(); !it.isDone(); it.next()){
					Vertex adj = (Vertex)it.currentItem();
					if (!adj.isVisited()) s.push(adj);
				}
			}//if
		}//while
	}

	//��ͼ���й�����ȱ���
	public I_Iterator BFSTraverse(Vertex v) {
		LinkedList traverseSeq = new LinkedListDLNode();//�������
		resetVexStatus();			//���ö���״̬
		BFS(v, traverseSeq);		//��v����������������
		I_Iterator it = getVertex();	//��ͼ��δ�����ʵ��������������������
		for(it.first(); !it.isDone(); it.next()){
			Vertex u = (Vertex)it.currentItem();
			if (!u.isVisited()) BFS(u, traverseSeq);
		}
		return traverseSeq.elements();
	}
	private void BFS(Vertex v, LinkedList list){
		Queue q = new QueueSLinked();
		v.setToVisited();
		list.insertLast(v);
		q.enqueue(v);
		while (!q.isEmpty()){
			Vertex u = (Vertex)q.dequeue();
			I_Iterator it = adjVertexs(u);
			for(it.first(); !it.isDone(); it.next()){
				Vertex adj = (Vertex)it.currentItem();
				if (!adj.isVisited()){
					adj.setToVisited();
					list.insertLast(adj);
					q.enqueue(adj);
				}//if
			}//for
		}//while
	}

	//�󶥵�v��������������·��
	public I_Iterator shortestPath(Vertex v) {
		LinkedList sPath = new LinkedListDLNode();
		resetVexStatus();//����ͼ�и������״̬��Ϣ
		I_Iterator it = getVertex();//��ʼ������v�����������̾����ʼ��Ϊ��vֱ�ӿɴ�ľ���
		for(it.first(); !it.isDone(); it.next()){
			Vertex u = (Vertex)it.currentItem();
			int weight = Integer.MAX_VALUE;
			Edge e = edgeFromTo(v,u);
			if (e!=null)
				weight = e.getWeight();
			if(u==v) weight = 0;
			Path p = new Path(weight,v,u);
			setPath(u, p);
		}
		v.setToVisited();//����v���뼯��S,��visited=true��ʾ����S����������S
		sPath.insertLast(getPath(v));//��õ����·���������ӱ�
		for (int t=1;t<getVexNum();t++){//����n-1��ѭ���ҵ�n-1�����·��
			Vertex k = selectMin(it);//�м䶥��k������ѡ����������ĵ㣬������Ϊ��
			k.setToVisited();				//����k����S
			sPath.insertLast(getPath(k));	//��õ����·���������ӱ�
			int distK = getDistance(k);		//��kΪ�м䶥���޸�v��V-S�ж���ĵ�ǰ���·��
			I_Iterator adjIt = adjVertexs(k);	//ȡ��k�������ڽӵ�
			for(adjIt.first(); !adjIt.isDone(); adjIt.next()){
				Vertex adjV = (Vertex)adjIt.currentItem();
				Edge e = edgeFromTo(k,adjV);
				if ((long)distK+(long)e.getWeight()<(long)getDistance(adjV)){//���ָ��̵�·��
					setDistance(adjV, distK+e.getWeight());
					amendPathInfo(k,adjV);	//��k��·����Ϣ�޸�adjV��·����Ϣ
				}
			}//for
		}//for(int t=1...
		return sPath.elements();
	}
	//�ڶ��㼯����ѡ��·��������С��
	protected Vertex selectMin(I_Iterator it){
		Vertex min = null;
		for(it.first(); !it.isDone(); it.next()){
			Vertex v = (Vertex)it.currentItem();
			if(!v.isVisited()){ min = v; break;}
		}
		for(; !it.isDone(); it.next()){
			Vertex v = (Vertex)it.currentItem();
			if(!v.isVisited()&&getDistance(v)<getDistance(min))
				min = v;
		}
		return min;
	}
	//�޸ĵ��յ��·����Ϣ
	protected void amendPathInfo(Vertex mid, Vertex end){
		I_Iterator it = getPath(mid).getPathInfo();
		getPath(end).clearPathInfo();
		for(it.first(); !it.isDone(); it.next()){
			getPath(end).addPathInfo(it.currentItem());
		}
		getPath(end).addPathInfo(mid.getInfo());
	}

	//ɾ��һ������v
	public abstract void remove(Vertex v);

	//ɾ��һ����e
	public abstract void remove(Edge e);
	
	//���ش�uָ��v�ıߣ��������򷵻�null
	public abstract Edge edgeFromTo(Vertex u, Vertex v);
	
	//���ش�u��������ֱ�ӵ�����ڽӶ���
	public abstract I_Iterator adjVertexs(Vertex u);
	
	//������ͼ����С������,���������ͼ��֧�ִ˲���
	public abstract void generateMST() throws UnsupportedOperation;

	//������ͼ����������,����ͼ��֧�ִ˲���
	public abstract I_Iterator toplogicalSort() throws UnsupportedOperation;

	//�������޻�ͼ�Ĺؼ�·��,����ͼ��֧�ִ˲���
	public abstract void criticalPath() throws UnsupportedOperation;

	//��������������ͼ�и������״̬��Ϣ
	protected void resetVexStatus(){
		I_Iterator it = getVertex();
		for(it.first(); !it.isDone(); it.next()){
			Vertex u = (Vertex)it.currentItem();
			u.resetStatus();
		}		
	}
	//����ͼ�и��ߵ�״̬��Ϣ
	protected void resetEdgeType(){
		I_Iterator it = getEdge();
		for(it.first(); !it.isDone(); it.next()){
			Edge e = (Edge)it.currentItem();
			e.resetType();
		}		
	}
	//�����·��ʱ����v.application�Ĳ���
	protected int getDistance(Vertex v){ return ((Path)v.getAppObj()).getDistance();}
	protected void setDistance(Vertex v, int dis){ ((Path)v.getAppObj()).setDistance(dis);}
	protected Path getPath(Vertex v){ return (Path)v.getAppObj();}
	protected void setPath(Vertex v, Path p){ v.setAppObj(p);}

}
