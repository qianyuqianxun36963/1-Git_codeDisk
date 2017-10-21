package ¼ò.±í;

import ¼ò.±í.I_Node;

public class Impl_SLNode implements I_Node {
	
	private Object element;
	private Impl_SLNode next;
	
	public Impl_SLNode() {
		this(null,null);
	}
	
	public Impl_SLNode(Object ele, Impl_SLNode next){
		this.element = ele;
		this.next = next;
	}

	public Impl_SLNode getNext(){
		return next;
	}
	
	public void setNext(Impl_SLNode next){
		this.next = next;
	}
	/****************Node Interface Method**************/
	public Object getData() {
		return element;
	}

	public void setData(Object obj) {
		element = obj;
	}	
}
