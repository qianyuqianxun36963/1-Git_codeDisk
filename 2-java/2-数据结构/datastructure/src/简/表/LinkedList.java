package ��.��;

import ��.�쳣.InvalidNodeException;
import ��.�쳣.OutOfBoundaryException;

public interface LinkedList {
	//��ѯ���ӱ�ǰ�Ĺ�ģ
	public int getSize();
	//�ж����ӱ��Ƿ�Ϊ��
	public boolean isEmpty();
	//���ص�һ�����
	public I_Node first() throws OutOfBoundaryException;
	//�������һ���
	public I_Node last() throws OutOfBoundaryException;
	//����p֮��Ľ��
	public I_Node getNext(I_Node p) throws InvalidNodeException, OutOfBoundaryException;
	//����p֮ǰ�Ľ��
	public I_Node getPre(I_Node p) throws InvalidNodeException, OutOfBoundaryException;
	//��e��Ϊ��һ��Ԫ�ز������ӱ�,������e���ڽ��
	public I_Node insertFirst(Object e);
	//��e��Ϊ���һ��Ԫ�ز����б�,������e���ڽ��
	public I_Node insertLast(Object e);
	//��e������p֮���λ��,������e���ڽ��
	public I_Node insertAfter(I_Node p, Object e) throws InvalidNodeException;
	//��e������p֮ǰ��λ��,������e���ڽ��
	public I_Node insertBefore(I_Node p, Object e) throws InvalidNodeException;
	//ɾ������λ�ô���Ԫ�أ�������֮
	public Object remove(I_Node p) throws InvalidNodeException;
	//ɾ����Ԫ�أ�������֮
	public Object removeFirst() throws OutOfBoundaryException;
	//ɾ��ĩԪ�أ�������֮
	public Object removeLast() throws OutOfBoundaryException;
	//�����ڸ���λ�õ�Ԫ���滻Ϊ��Ԫ�أ������ر��滻��Ԫ��
	public Object replace(I_Node p, Object e) throws InvalidNodeException;
	//Ԫ�ص�����
	public I_Iterator elements();
}