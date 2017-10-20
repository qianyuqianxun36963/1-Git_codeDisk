package 简.表;

import 简.表.LinkedList;
import 简.表.I_Node;
import 辅.异常.InvalidNodeException;
import 辅.异常.OutOfBoundaryException;
import 简.表.I_Iterator;

public class LinkedListDLNode implements LinkedList {
	private int size;	//规模
	private Impl_DLNode head;//头结点,哑元结点
	private Impl_DLNode tail;//尾结点,哑元结点
	public LinkedListDLNode() {
		size = 0;
		head = new Impl_DLNode();//构建只有头尾结点的链表
		tail = new Impl_DLNode();
		head.setNext(tail);
		tail.setPre(head);
	}
	//辅助方法，判断结点p是否合法，如合法转换为DLNode
	private Impl_DLNode checkPosition(I_Node p) throws InvalidNodeException {
		if (p==null)
			throw new InvalidNodeException("错误：p为空。");
		if (p==head)
			throw new InvalidNodeException("错误：p指向头节点，非法。");
		if (p==tail)
			throw new InvalidNodeException("错误：p指向尾结点，非法。");
		Impl_DLNode node = (Impl_DLNode)p;
		return node;
	}
	
	//查询链接表当前的规模
	public int getSize() {
		return size;
	}

	//判断链接表是否为空
	public boolean isEmpty() {
		return size==0;
	}

	//返回第一个结点
	public I_Node first() throws OutOfBoundaryException{
		if (isEmpty())
			throw new OutOfBoundaryException("错误：链接表为空。");
		return head.getNext();
	}

	//返回最后一结点
	public I_Node last() throws OutOfBoundaryException{
		if (isEmpty())
			throw new OutOfBoundaryException("错误：链接表为空。");
		return tail.getPre();
	}

	//返回p之后的结点
	public I_Node getNext(I_Node p) throws InvalidNodeException, OutOfBoundaryException {
		Impl_DLNode node = checkPosition(p);
		node = node.getNext();
		if (node==tail)
			throw new OutOfBoundaryException("错误：已经是链接表尾端。");
		return node;
	}

	//返回p之前的结点
	public I_Node getPre(I_Node p) throws InvalidNodeException, OutOfBoundaryException {
		Impl_DLNode node = checkPosition(p);
		node = node.getPre();
		if (node==head)
			throw new OutOfBoundaryException("错误：已经是链接表前端。");
		return node;
	}

	//将e作为第一个元素插入链接表
	public I_Node insertFirst(Object e) {
		Impl_DLNode node = new Impl_DLNode(e,head,head.getNext());
		head.getNext().setPre(node);
		head.setNext(node);
		size++;
		return node;
	}

	//将e作为最后一个元素插入列表,并返回e所在结点
	public I_Node insertLast(Object e) {
		Impl_DLNode node = new Impl_DLNode(e,tail.getPre(),tail);
		tail.getPre().setNext(node);
		tail.setPre(node);
		size++;
		return node;
	}

	//将e插入至p之后的位置,并返回e所在结点
	public I_Node insertAfter(I_Node p, Object e) throws InvalidNodeException {
		Impl_DLNode node = checkPosition(p);
		Impl_DLNode newNode = new Impl_DLNode(e,node,node.getNext());
		node.getNext().setPre(newNode);
		node.setNext(newNode);
		size++;
		return newNode;
	}

	//将e插入至p之前的位置,并返回e所在结点
	public I_Node insertBefore(I_Node p, Object e) throws InvalidNodeException {
		Impl_DLNode node = checkPosition(p);
		Impl_DLNode newNode = new Impl_DLNode(e,node.getPre(),node);
		node.getPre().setNext(newNode);
		node.setPre(newNode);
		size++;
		return newNode;
	}

	//删除给定位置处的元素，并返回之
	public Object remove(I_Node p) throws InvalidNodeException {
		Impl_DLNode node = checkPosition(p);
		Object obj = node.getData();
		node.getPre().setNext(node.getNext());
		node.getNext().setPre(node.getPre());
		size--;
		return obj;
	}

	//删除首元素，并返回之
	public Object removeFirst() throws OutOfBoundaryException{
		return remove(head.getNext());
	}

	//删除末元素，并返回之
	public Object removeLast() throws OutOfBoundaryException{
		return remove(tail.getPre());
	}

	//将处于给定位置的元素替换为新元素，并返回被替换的元素
	public Object replace(I_Node p, Object e) throws InvalidNodeException {
		Impl_DLNode node = checkPosition(p);
		Object obj = node.getData();
		node.setData(e);
		return obj;
	}

	//元素迭代器
	public I_Iterator elements() {
		return new Impl_LinkedListIterator(this);
	}	
}
