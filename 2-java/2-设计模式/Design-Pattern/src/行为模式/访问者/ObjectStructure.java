package ��Ϊģʽ.������;

import java.util.*;

public class ObjectStructure {
	//�жӻ�ӭ��������һ��Ԫ�صĶ��С�
	private List<I_Element> elements = new ArrayList<I_Element>();
	
	public void attach(I_Element element){
		elements.add(element);
	}
	
	public void remove(I_Element element){
		elements.remove(element);
	}
	
	public void display(I_Visitor visitor){
		for(I_Element e : elements){
			e.accpet(visitor);//������ÿһ���˶��Ӵ���ǰ�ķ����ߡ�
		}
	};
}
