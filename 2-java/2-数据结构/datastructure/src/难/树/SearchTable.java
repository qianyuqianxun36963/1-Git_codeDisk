package 难.树;

import 简.表.*;

public interface SearchTable {
	//查询查找表当前的规模
	public int getSize();
	//判断查找表是否为空
	public boolean isEmpty();
	//返回查找表中与元素ele关键字相同的元素位置；否则，返回null
	public I_Node search(Object ele);
	//返回所有关键字与元素ele相同的元素位置
	public I_Iterator searchAll(Object ele);
	//按关键字插入元素ele
	public void insert(Object ele);
	//若查找表中存在与元素ele关键字相同元素，则删除一个并返回；否则，返回null
	public Object remove(Object ele);
}
