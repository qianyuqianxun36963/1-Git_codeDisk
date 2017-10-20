package 难.图;

import 简.表.I_Iterator;
import 简.表.I_Node;
import 辅.异常.UnsupportedOperation;

public interface I_Graph {
	public static final int UndirectedGraph = 0;//无向图
	public static final int DirectedGraph   = 1;//有向图
	
	//返回图的类型
	public int getType();
	//返回图的顶点数
	public int getVexNum();
	//返回图的边数
	public int getEdgeNum();
	//返回图的所有顶点
	public I_Iterator getVertex();
	//返回图的所有边
	public I_Iterator getEdge();
	//删除一个顶点v
	public void remove(Vertex v);
	//删除一条边e
	public void remove(Edge e);
	//添加一个顶点v
	public I_Node insert(Vertex v);
	//添加一条边e
	public I_Node insert(Edge e);
	//判断顶点u、v是否邻接，即是否有边从u到v
	public boolean areAdjacent(Vertex u, Vertex v);
	//返回从u指向v的边，不存在则返回null
	public Edge edgeFromTo(Vertex u, Vertex v);
	//返回从u出发可以直接到达的邻接顶点
	public I_Iterator adjVertexs(Vertex u);
	//对图进行深度优先遍历
	public I_Iterator DFSTraverse(Vertex v);
	//对图进行广度优先遍历
	public I_Iterator BFSTraverse(Vertex v);
	//求顶点v到其他顶点的最短路径
	public I_Iterator shortestPath(Vertex v);
	//求无向图的最小生成树,如果是有向图不支持此操作
	public void generateMST() throws UnsupportedOperation;
	//求有向图的拓扑序列,无向图不支持此操作
	public I_Iterator toplogicalSort() throws UnsupportedOperation;
	//求有向无环图的关键路径,无向图不支持此操作
	public void criticalPath() throws UnsupportedOperation;
}
