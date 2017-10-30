package 行为模式.访问者;

public class Client {
	public static void main(String args[]){
		ObjectStructure o = new ObjectStructure();
		Impl_ElementMan man = new Impl_ElementMan("小红");
		Impl_ElementWoman woman = new Impl_ElementWoman("王芳");
		o.attach(man);
		o.attach(woman);
		
		Impl_VisitorA va = new Impl_VisitorA();
		man.accpet(va); //男人接待访问者。
		o.display(va);
		
		Impl_VisitorB vb = new Impl_VisitorB();
		o.display(vb);
		
		Impl_VisitorC vc = new Impl_VisitorC();
		o.display(vc);
		
		ObjectStructure objectstructure = new ObjectStructure();
		Impl_ElementMan a1 = new Impl_ElementMan("张三");
		Impl_ElementMan a2 = new Impl_ElementMan("李四");
		Impl_ElementMan a3 = new Impl_ElementMan("王五");
		objectstructure.attach(a1);
		objectstructure.attach(a2);
		objectstructure.attach(a3);
		
		Impl_VisitorA visita = new Impl_VisitorA();
		objectstructure.display(visita);
	}
}
