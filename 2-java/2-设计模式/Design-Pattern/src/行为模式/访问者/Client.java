package ��Ϊģʽ.������;

public class Client {
	public static void main(String args[]){
		ObjectStructure o = new ObjectStructure();
		Impl_ElementMan man = new Impl_ElementMan("С��");
		Impl_ElementWoman woman = new Impl_ElementWoman("����");
		o.attach(man);
		o.attach(woman);
		
		Impl_VisitorA va = new Impl_VisitorA();
		man.accpet(va); //���˽Ӵ������ߡ�
		o.display(va);
		
		Impl_VisitorB vb = new Impl_VisitorB();
		o.display(vb);
		
		Impl_VisitorC vc = new Impl_VisitorC();
		o.display(vc);
		
		ObjectStructure objectstructure = new ObjectStructure();
		Impl_ElementMan a1 = new Impl_ElementMan("����");
		Impl_ElementMan a2 = new Impl_ElementMan("����");
		Impl_ElementMan a3 = new Impl_ElementMan("����");
		objectstructure.attach(a1);
		objectstructure.attach(a2);
		objectstructure.attach(a3);
		
		Impl_VisitorA visita = new Impl_VisitorA();
		objectstructure.display(visita);
	}
}
