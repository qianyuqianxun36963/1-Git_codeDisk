package java����.a_��֯.c_��.��װ;

public class ��������{
	public void publicfunction(){System.out.println("this is public function");}
	protected void protectedfunction(){System.out.println("this is protected function");}
//	���ӷ������δʵĳ�Ա�����ͳ�Ա������Ϊ�Ѻñ������Ѻ÷�����ͬһ�����е�����Է���֮��������༴ʹimport�������ڵİ���Ҳ���ܷ���֮��
	void packagefunction(){System.out.println("this is package function");}
	private void privatefunction(){System.out.println("this is private function");}

	public static void func(){
		�������� jiben = new ��������();
		jiben.publicfunction();
		jiben.packagefunction();
		jiben.protectedfunction();
		jiben.privatefunction(); //private�������ڶ���÷������౾��������з��ʡ�
	}
}
