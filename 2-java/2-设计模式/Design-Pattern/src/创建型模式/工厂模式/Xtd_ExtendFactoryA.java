package ������ģʽ.����ģʽ;

public class Xtd_ExtendFactoryA extends Factory_Abstract{

	@Override
	I_Moveable getMoveable() {
		return new Impl_Plane();//���ؾ����ĳ���Ʒ
	}

	@Override
	I_Writeable getWriteable() {
		return new Impl_Pencil();//���ؾ����ĳ���Ʒ
	}

}
