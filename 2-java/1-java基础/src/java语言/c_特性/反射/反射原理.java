package java语言.c_特性.反射;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class 反射原理 {
    public static void main(String[] args) throws ClassNotFoundException 
    {
        String [] names ={"tom","tim","allen","alice"};

//      概念1：反射机制是什么
//      反射机制是在运行状态中，对于任意一个类，都能够知道这个类的所有属性和方法；
//      对于任意一个对象，都能够调用它的任意一个方法和属性；
//      这种动态获取的信息以及动态调用对象的方法的功能称为java语言的反射机制。
        
//        概念:2：Class<?> class 类实例
        
//      Class类用来描述一个类的结构，比如描述一个类有哪些成员，有哪些方法等。
        
//      Class类实例获取方式：
//      <1> 直接通过类还获得：
        Class<?> c = Test.class;
        
//      <2>通过对象来获得
        Test test = new Test();
        Class<?> c2 = test.getClass();
        
//      <3>通过Class.forName来获得
        Class<?> c3 = Class.forName("java语言.c_特性.反射.Test");
        
        
        
        //这里用的是其他的类，如果是本类自己，可以不用上面那句，直接用this:将下面的对象标志c换成this
        try
        {
            Method method = c.getMethod("sayrHi", String.class);//参数必须和方法中一样。int和Integer，double和Double被视为不同的类型
            for(String name:names)
                method.invoke(c.newInstance(),name);//invoke 方法，调用类里吗的方法。
        } 
        catch (NoSuchMethodException e) {
            e.printStackTrace();
            throw new RuntimeException("没有此方法：" + e.getMessage(), e);
        }catch(InvocationTargetException e){
            e.printStackTrace();
            throw new RuntimeException("目标方法执行失败：" + e.getMessage(), e);
        }catch(IllegalAccessException e){
            e.printStackTrace();
            throw new RuntimeException("你可能访问了一个私有的方法：" + e.getMessage(), e);
        }catch(IllegalArgumentException e){
            e.printStackTrace();
            throw new RuntimeException("方法传递了一个不合法或不正确的参数：" + e.getMessage(), e);
        }catch(InstantiationException e){
            e.printStackTrace();
            throw new RuntimeException("实例化异常：" + e.getMessage(), e);
        }catch(Exception e){
            e.printStackTrace();
            throw new RuntimeException(e.getMessage(), e);
        }
    }
}

class Test
{
    public void sayHi(String name)
    {
        System.out.println("Hi "+name);
    }
}