package ������ģʽ.����ģʽ;

public class Xtd_PlaneFactory extends Factory_Vehicle{
	@Override
	public I_Moveable create() {
		return new Impl_Plane();//���ؾ����ĳ���Ʒ
	}
}
