package 简.表;

import 辅.异常.InvalidNodeException;
import 辅.异常.OutOfBoundaryException;

public interface LinkedList {
	//查询链接表当前的规模
	public int getSize();
	//判断链接表是否为空
	public boolean isEmpty();
	//返回第一个结点
	public I_Node first() throws OutOfBoundaryException;
	//返回最后一结点
	public I_Node last() throws OutOfBoundaryException;
	//返回p之后的结点
	public I_Node getNext(I_Node p) throws InvalidNodeException, OutOfBoundaryException;
	//返回p之前的结点
	public I_Node getPre(I_Node p) throws InvalidNodeException, OutOfBoundaryException;
	//将e作为第一个元素插入链接表,并返回e所在结点
	public I_Node insertFirst(Object e);
	//将e作为最后一个元素插入列表,并返回e所在结点
	public I_Node insertLast(Object e);
	//将e插入至p之后的位置,并返回e所在结点
	public I_Node insertAfter(I_Node p, Object e) throws InvalidNodeException;
	//将e插入至p之前的位置,并返回e所在结点
	public I_Node insertBefore(I_Node p, Object e) throws InvalidNodeException;
	//删除给定位置处的元素，并返回之
	public Object remove(I_Node p) throws InvalidNodeException;
	//删除首元素，并返回之
	public Object removeFirst() throws OutOfBoundaryException;
	//删除末元素，并返回之
	public Object removeLast() throws OutOfBoundaryException;
	//将处于给定位置的元素替换为新元素，并返回被替换的元素
	public Object replace(I_Node p, Object e) throws InvalidNodeException;
	//元素迭代器
	public I_Iterator elements();
}