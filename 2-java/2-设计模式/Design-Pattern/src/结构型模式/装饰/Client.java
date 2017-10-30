package 结构型模式.装饰;

//java的ioAPI就是使用装饰模式的。

public class Client {
	public static void main(String args[]){
		Impl_Chinese chinese = new Impl_Chinese("wangyajun");
		Decorator_zero  zero = new Decorator_zero(chinese);
		zero.wearClothes();  
		zero.walkToWhere(); 
		
		Decorator_first  first  = new Decorator_first(chinese);
		first.wearClothes();  
		first.walkToWhere(); 
		
		Decorator_first  first2  = new Decorator_first(new Decorator_zero(chinese));
		first2.wearClothes();  
		first2.walkToWhere(); 
		
		Decorator decorator = new Decorator_second(new Decorator_first(new Decorator_zero(chinese)));
		decorator.wearClothes();  
        decorator.walkToWhere(); 
	}
}
