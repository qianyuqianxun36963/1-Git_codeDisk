package ��Ϊģʽ.������;

public class Impl_ElementWoman implements I_Element{
	String name;
	Impl_ElementWoman(String name){this.name = name;}
	
	public void accpet(I_Visitor visitor) {
		visitor.getResponse_from_Woman(this);
	}
}
