package 创建型模式.工厂模式;

//注意，这里的类并不是抽象的！也就不会有很多的子类。 这个实际中很少用。 只是作为原理的入门介绍
public class Factory_Simple {
    public Object create(Class<?> clazz) {
        if (clazz.getName().equals(Impl_Plane.class.getName())) {
            return createPlane();
        } else if (clazz.getName().equals(Impl_Broom.class.getName())) {
            return createBroom();
        }
        return null;
    }
    
    private Impl_Broom createBroom() {
        return new Impl_Broom();
    }
    
    private Impl_Plane createPlane() {
        return new Impl_Plane();
    }
}
