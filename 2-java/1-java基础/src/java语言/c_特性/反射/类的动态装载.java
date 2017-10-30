package java语言.c_特性.反射;

public class 类的动态装载 {
	public static Object create(Class<?> clazz) {
        if (clazz.getName().equals(ClassKindA.class.getName())) {
        	return new ClassKindA();
        } else 
        if (clazz.getName().equals(ClassKindB.class.getName())) {
            return new ClassKindB();
        }
        return null;
    }
	
	public static void main(String args[]){
		ClassKindA classA = (ClassKindA)类的动态装载.create(ClassKindA.class);
		classA.say();
	}
}

interface I_Say{
	void say();
}

class ClassKindA implements I_Say{
	public  void say(){
		System.out.println("this is classA");
	}
}

class ClassKindB{
	public  void say(){
		System.out.println("this is classB");
	}
}