package ������ģʽ.����ģʽ;

//ע�⣬������ಢ���ǳ���ģ�Ҳ�Ͳ����кܶ�����ࡣ ���ʵ���к����á� ֻ����Ϊԭ������Ž���
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
