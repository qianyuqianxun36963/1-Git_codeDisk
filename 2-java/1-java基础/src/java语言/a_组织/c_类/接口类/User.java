package java����.a_��֯.c_��.�ӿ���;


public class User {
	public static void main(String args[]){
		I_interFace impl= new Impl_Interface();
		impl.setData(123);
		System.out.println(impl.getData());
		System.out.println(impl.getAge());
	}
}
