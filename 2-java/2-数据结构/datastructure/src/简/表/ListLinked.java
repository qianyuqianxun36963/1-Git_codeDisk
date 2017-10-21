package ��.��;

import ��.��.List;
import ��.�쳣.OutOfBoundaryException;
import ��.�Ƚϲ���.DefaultStrategy;
import ��.�Ƚϲ���.Strategy;

public class ListLinked implements List {
	private Strategy strategy;	//����Ԫ�رȽϲ���
	private Impl_SLNode head;		//�������׽������
	private int size;			//���Ա�������Ԫ�صĸ���
	
	public ListLinked() {
		this(new DefaultStrategy());
	}
	public ListLinked(Strategy strategy) {
		this.strategy = strategy;
		head = new Impl_SLNode();
		size = 0;
	}
	
	//��������
	//��ȡ����Ԫ��e���ڽ���ǰ�����
	private Impl_SLNode getPreNode(Object e){
		Impl_SLNode p = head;
		while (p.getNext()!=null)
			if (strategy.equal(p.getNext().getData(),e)) return p;
			else	p = p.getNext();
		return null;
	}
	//��ȡ���Ϊ0<=i<size��Ԫ�����ڽ���ǰ�����
	private Impl_SLNode getPreNode(int i){
		Impl_SLNode p = head;
		for (; i>0; i--)	p = p.getNext();
		return p;
	}
	//��ȡ���Ϊ0<=i<size��Ԫ�����ڽ��
	private Impl_SLNode getNode(int i){
		Impl_SLNode p = head.getNext();
		for (; i>0; i--)	p = p.getNext();
		return p;
	}
	
	//�������Ա�Ĵ�С��������Ԫ�صĸ�����
	public int getSize() {
		return size;
	}

	//������Ա�Ϊ�շ���true�����򷵻�false��
	public boolean isEmpty() {
		return size==0;
	}

	//�ж����Ա��Ƿ��������Ԫ��e
	public boolean contains(Object e) {
		Impl_SLNode p = head.getNext();
		while (p!=null)
			if (strategy.equal(p.getData(),e)) return true;
			else	p = p.getNext();
		return false;
	}

	//��������Ԫ��e�����Ա��е����
	public int indexOf(Object e) {
		Impl_SLNode p = head.getNext();
		int index = 0;
		while (p!=null)
			if (strategy.equal(p.getData(),e)) return index;
			else	{index++; p = p.getNext();}
		return -1;
	}

	//������Ԫ��e���뵽���Ա���i��λ��
	public void insert(int i, Object e) throws OutOfBoundaryException {
		if (i<0||i>size)
			throw new OutOfBoundaryException("����ָ���Ĳ������Խ�硣");
		Impl_SLNode p = getPreNode(i);
		Impl_SLNode q = new Impl_SLNode(e,p.getNext());
		p.setNext(q);
		size++;
		return;
	}

	//������Ԫ��e���뵽Ԫ��obj֮ǰ
	public boolean insertBefore(Object obj, Object e) {
		Impl_SLNode p = getPreNode(obj);
		if (p!=null){
			Impl_SLNode q = new Impl_SLNode(e,p.getNext());
			p.setNext(q);
			size++;
			return true;
		}
		return false;
	}

	//������Ԫ��e���뵽Ԫ��obj֮��
	public boolean insertAfter(Object obj, Object e) {
		Impl_SLNode p = head.getNext();
		while (p!=null)
			if (strategy.equal(p.getData(),obj)){
				Impl_SLNode q = new Impl_SLNode(e,p.getNext());
				p.setNext(q);
				size++;
				return true;
			}
			else	p = p.getNext();
		return false;
	}

	//ɾ�����Ա������Ϊi��Ԫ��,������֮
	public Object remove(int i) throws OutOfBoundaryException {
		if (i<0||i>=size)
			throw new OutOfBoundaryException("����ָ����ɾ�����Խ�硣");
		Impl_SLNode p = getPreNode(i);
		Object obj = p.getNext().getData();
		p.setNext(p.getNext().getNext());
		size--;
		return obj;
	}

	//ɾ�����Ա��е�һ����e��ͬ��Ԫ��
	public boolean remove(Object e) {
		Impl_SLNode p = getPreNode(e);
		if (p!=null){
			p.setNext(p.getNext().getNext());
			size--;
			return true;
		}
		return false;
	}

	//�滻���Ա������Ϊi������Ԫ��Ϊe������ԭ����Ԫ��
	public Object replace(int i, Object e) throws OutOfBoundaryException {
		if (i<0||i>=size)
			throw new OutOfBoundaryException("����ָ�������Խ�硣");
		Impl_SLNode p = getNode(i);
		Object obj = p.getData();
		p.setData(e);
		return obj;
	}

	//�������Ա������Ϊi������Ԫ��
	public Object get(int i) throws OutOfBoundaryException {
		if (i<0||i>=size)
			throw new OutOfBoundaryException("����ָ�������Խ�硣");
		Impl_SLNode p = getNode(i);
		return p.getData();
	}
}
