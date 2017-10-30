package 行为模式.访问者;

import java.util.*;

public class ObjectStructure {
	//列队欢迎，这里是一个元素的队列。
	private List<I_Element> elements = new ArrayList<I_Element>();
	
	public void attach(I_Element element){
		elements.add(element);
	}
	
	public void remove(I_Element element){
		elements.remove(element);
	}
	
	public void display(I_Visitor visitor){
		for(I_Element e : elements){
			e.accpet(visitor);//队列中每一个人都接待当前的访问者。
		}
	};
}
