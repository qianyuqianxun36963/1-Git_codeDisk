package ������ģʽ.����ģʽ;

public class Xtd_BroomFactory extends Factory_Vehicle{

	@Override
	public I_Moveable create() {
		return new Impl_Broom();//���ؾ����ĳ���Ʒ
	}

}
