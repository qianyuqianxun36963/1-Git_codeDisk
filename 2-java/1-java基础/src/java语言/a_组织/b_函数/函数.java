package java语言.a_组织.b_函数;

public class 函数 {
	//java里面定义方法(函数)的时候不能定义默认参数，如void fun(int i = 5); 这样的声明可以在C++里面用。
	public static void main(String args[]){
		System.out.println(getString());
		int j = getInt();
		System.out.println(j);
		String k = getString();
		System.out.println(j);
		System.out.println(k);
	}
	
	//C语言中每次写函数是都会告诉自己不要返回局部变量,C没有引用，返回的是指针，局部变量调用结束就销毁(可能不是马上)，所以返回的那个指针就 不对了。
	//在C++中，既有指针也有引用，java中的传值更像C++的引用，而不是C的指针。
	//在 java 里,由于是进行引用传递,他会在每一次对象赋值的时候进行引用计数,如果计数不为0,就不会回收局部变量,那么也就不会造成消失的问题
	
	public static String getString(){
		String s = "this is string";
		return s;
	}
	
	public static int getInt(){
		int i = 10;
		return i;
	}
}
