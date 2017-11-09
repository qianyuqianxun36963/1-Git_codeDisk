package 创建型模式.工厂模式;

public class Xtd_PlaneFactory extends Factory_Vehicle{
    @Override
    public I_Moveable create() {
        return new Impl_Plane();//返回具体的某类产品
    }
}
