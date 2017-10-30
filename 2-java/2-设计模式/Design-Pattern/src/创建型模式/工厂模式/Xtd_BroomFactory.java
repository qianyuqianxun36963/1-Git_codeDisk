package 创建型模式.工厂模式;

public class Xtd_BroomFactory extends Factory_Vehicle{

	@Override
	public I_Moveable create() {
		return new Impl_Broom();//返回具体的某类产品
	}

}
