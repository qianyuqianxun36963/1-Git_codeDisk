package �ṹ��ģʽ.���;

//ͨ�����һͳһ����ۣ����ڶ��ʽ�Ķ���������Ϻ��ṩ����硣
public class Facade {
	BaseClass baseclass;
	BadClass badclass;
	OldClass oldclass;
	
	Facade(){
		baseclass = new BaseClass();
		badclass = new BadClass();
		oldclass = new OldClass();
	}
	
	
	public void sing(){
		baseclass.sing();
		oldclass.sing();
	}
	public void dance(){
		baseclass.dance();
		badclass.dance();
	}
}
