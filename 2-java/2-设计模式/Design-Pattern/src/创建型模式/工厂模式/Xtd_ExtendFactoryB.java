package ������ģʽ.����ģʽ;

public class Xtd_ExtendFactoryB extends Factory_Abstract{

	@Override
	I_Moveable getMoveable() {
		return new Impl_Broom();//���ؾ����ĳ���Ʒ
	}

	@Override
	I_Writeable getWriteable() {
		return new Impl_Pen(); //���ؾ����ĳ���Ʒ
	}

}
