package 创建型模式.工厂模式;

public class Xtd_ExtendFactoryA extends Factory_Abstract{

	@Override
	I_Moveable getMoveable() {
		return new Impl_Plane();//返回具体的某类产品
	}

	@Override
	I_Writeable getWriteable() {
		return new Impl_Pencil();//返回具体的某类产品
	}

}
