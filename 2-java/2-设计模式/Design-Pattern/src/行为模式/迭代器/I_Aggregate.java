package ��Ϊģʽ.������;


/**
 *  The interface to create concrete iterator
 *  When create iterator, we can use Factory Method pattern
 */

//aggregate ���ϡ� ����list��set ֮��ġ�
public interface I_Aggregate  {
    public I_Iterator CreateIterator();
}