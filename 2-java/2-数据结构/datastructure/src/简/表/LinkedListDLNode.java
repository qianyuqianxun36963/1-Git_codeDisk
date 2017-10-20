package ��.��;

import ��.��.LinkedList;
import ��.��.I_Node;
import ��.�쳣.InvalidNodeException;
import ��.�쳣.OutOfBoundaryException;
import ��.��.I_Iterator;

public class LinkedListDLNode implements LinkedList {
	private int size;	//��ģ
	private Impl_DLNode head;//ͷ���,��Ԫ���
	private Impl_DLNode tail;//β���,��Ԫ���
	public LinkedListDLNode() {
		size = 0;
		head = new Impl_DLNode();//����ֻ��ͷβ��������
		tail = new Impl_DLNode();
		head.setNext(tail);
		tail.setPre(head);
	}
	//�����������жϽ��p�Ƿ�Ϸ�����Ϸ�ת��ΪDLNode
	private Impl_DLNode checkPosition(I_Node p) throws InvalidNodeException {
		if (p==null)
			throw new InvalidNodeException("����pΪ�ա�");
		if (p==head)
			throw new InvalidNodeException("����pָ��ͷ�ڵ㣬�Ƿ���");
		if (p==tail)
			throw new InvalidNodeException("����pָ��β��㣬�Ƿ���");
		Impl_DLNode node = (Impl_DLNode)p;
		return node;
	}
	
	//��ѯ���ӱ�ǰ�Ĺ�ģ
	public int getSize() {
		return size;
	}

	//�ж����ӱ��Ƿ�Ϊ��
	public boolean isEmpty() {
		return size==0;
	}

	//���ص�һ�����
	public I_Node first() throws OutOfBoundaryException{
		if (isEmpty())
			throw new OutOfBoundaryException("�������ӱ�Ϊ�ա�");
		return head.getNext();
	}

	//�������һ���
	public I_Node last() throws OutOfBoundaryException{
		if (isEmpty())
			throw new OutOfBoundaryException("�������ӱ�Ϊ�ա�");
		return tail.getPre();
	}

	//����p֮��Ľ��
	public I_Node getNext(I_Node p) throws InvalidNodeException, OutOfBoundaryException {
		Impl_DLNode node = checkPosition(p);
		node = node.getNext();
		if (node==tail)
			throw new OutOfBoundaryException("�����Ѿ������ӱ�β�ˡ�");
		return node;
	}

	//����p֮ǰ�Ľ��
	public I_Node getPre(I_Node p) throws InvalidNodeException, OutOfBoundaryException {
		Impl_DLNode node = checkPosition(p);
		node = node.getPre();
		if (node==head)
			throw new OutOfBoundaryException("�����Ѿ������ӱ�ǰ�ˡ�");
		return node;
	}

	//��e��Ϊ��һ��Ԫ�ز������ӱ�
	public I_Node insertFirst(Object e) {
		Impl_DLNode node = new Impl_DLNode(e,head,head.getNext());
		head.getNext().setPre(node);
		head.setNext(node);
		size++;
		return node;
	}

	//��e��Ϊ���һ��Ԫ�ز����б�,������e���ڽ��
	public I_Node insertLast(Object e) {
		Impl_DLNode node = new Impl_DLNode(e,tail.getPre(),tail);
		tail.getPre().setNext(node);
		tail.setPre(node);
		size++;
		return node;
	}

	//��e������p֮���λ��,������e���ڽ��
	public I_Node insertAfter(I_Node p, Object e) throws InvalidNodeException {
		Impl_DLNode node = checkPosition(p);
		Impl_DLNode newNode = new Impl_DLNode(e,node,node.getNext());
		node.getNext().setPre(newNode);
		node.setNext(newNode);
		size++;
		return newNode;
	}

	//��e������p֮ǰ��λ��,������e���ڽ��
	public I_Node insertBefore(I_Node p, Object e) throws InvalidNodeException {
		Impl_DLNode node = checkPosition(p);
		Impl_DLNode newNode = new Impl_DLNode(e,node.getPre(),node);
		node.getPre().setNext(newNode);
		node.setPre(newNode);
		size++;
		return newNode;
	}

	//ɾ������λ�ô���Ԫ�أ�������֮
	public Object remove(I_Node p) throws InvalidNodeException {
		Impl_DLNode node = checkPosition(p);
		Object obj = node.getData();
		node.getPre().setNext(node.getNext());
		node.getNext().setPre(node.getPre());
		size--;
		return obj;
	}

	//ɾ����Ԫ�أ�������֮
	public Object removeFirst() throws OutOfBoundaryException{
		return remove(head.getNext());
	}

	//ɾ��ĩԪ�أ�������֮
	public Object removeLast() throws OutOfBoundaryException{
		return remove(tail.getPre());
	}

	//�����ڸ���λ�õ�Ԫ���滻Ϊ��Ԫ�أ������ر��滻��Ԫ��
	public Object replace(I_Node p, Object e) throws InvalidNodeException {
		Impl_DLNode node = checkPosition(p);
		Object obj = node.getData();
		node.setData(e);
		return obj;
	}

	//Ԫ�ص�����
	public I_Iterator elements() {
		return new Impl_LinkedListIterator(this);
	}	
}
