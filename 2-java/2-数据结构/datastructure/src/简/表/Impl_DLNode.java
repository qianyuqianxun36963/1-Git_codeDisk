package ¼ò.±í;

import ¼ò.±í.I_Node;

public class Impl_DLNode implements I_Node {
	private Object element;
	private Impl_DLNode pre;
	private Impl_DLNode next;
	
	public Impl_DLNode() {
		this(null,null,null);
	}
	public Impl_DLNode(Object ele, Impl_DLNode pre, Impl_DLNode next){
		this.element = ele;
		this.pre = pre;
		this.next = next;
	}

	public Impl_DLNode getNext(){
		return next;
	}
	public void setNext(Impl_DLNode next){
		this.next = next;
	}
	public Impl_DLNode getPre(){
		return pre;
	}
	public void setPre(Impl_DLNode pre){
		this.pre = pre;
	}
	/****************Node Interface Method**************/
	public Object getData() {
		return element;
	}

	public void setData(Object obj) {
		element = obj;
	}	
}
