package java语言.a_组织.c_类.继承;

public class 继承 {
	public static void main(String args[]){
		subclass sb = new subclass();
		sb.test();
	}
}

//java里面的基础，只能是单继承，但是可以多重继承。

//类似这里的，可以去看下C++工程里继承里面的虚拟函数的处理。 那离的虚函数居然有默认参数！！
abstract class baseclass{
	int val;
	baseclass(){this.val = 0;}
	public abstract void fun();
	public abstract void test();
}

class subclass extends baseclass{
	int val;
	subclass(){this.val = 1;}
	public void fun()  {System.out.println(val);}
	public void test() {fun();}

}