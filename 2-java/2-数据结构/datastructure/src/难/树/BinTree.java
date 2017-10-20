package ��.��;

import ��.��.I_Iterator;

public interface BinTree {
	//�������Ĺ�ģ
	public int getSize();
	//�ж����Ƿ�Ϊ��
	public boolean isEmpty();
	//���ظ��������
	public BinTreeNode getRoot();
	//��ȡ���ĸ߶�
	public int getHeight();
	//�����в���Ԫ��e�����������ڽ��
	public BinTreeNode find(Object e);
	//�������������
	public I_Iterator preOrder();
	//�������������
	public I_Iterator inOrder();
	//�������������
	public I_Iterator postOrder();
	//�������������
	public I_Iterator levelOrder();
}
