package ��.ջ�Ͷ���;

import ��.��.Impl_SLNode;
import ��.�쳣.QueueEmptyException;

public class QueueSLinked implements Queue {
	private Impl_SLNode front;
	private Impl_SLNode rear;
	private int size;
	public QueueSLinked() {
		front = new Impl_SLNode();
		rear = front;
		size = 0;
	}

	//���ض��еĴ�С
	public int getSize() {
		return size;
	}

	//�ж϶����Ƿ�Ϊ��
	public boolean isEmpty() {
		return size==0;
	}

	//����Ԫ��e���
	public void enqueue(Object e) {
		Impl_SLNode p = new Impl_SLNode(e,null);
		rear.setNext(p);
		rear = p;
		size++;
	}

	//����Ԫ�س���
	public Object dequeue() throws QueueEmptyException {
		if (size<1)
			throw new QueueEmptyException("���󣺶���Ϊ��");
		Impl_SLNode p = front.getNext();
		front.setNext(p.getNext());
		size--;
		if (size<1) rear = front;	//�������Ϊ��,rearָ��ͷ���
		return p.getData();
	}

	//ȡ����Ԫ��
	public Object peek() throws QueueEmptyException {
		if (size<1)
			throw new QueueEmptyException("���󣺶���Ϊ��");
		return front.getNext().getData();
	}	
}
