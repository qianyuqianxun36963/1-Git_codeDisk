package java语言.a_组织.a_语法.操作符;

public class 操作符 {
	public static void main(String args[]){
		testAddAndSub();
	}

	private static void testAddAndSub(){
		int i = 0;
		System.out.println("i++:"+(i++));
		System.out.println("i:"+i);
		System.out.println("++i:"+(++i));
		System.out.println("i:"+i);
		
		i = 0;
		System.out.println("i--:"+i--);
		System.out.println("i:"+i);
		System.out.println("i--:"+i--);
		System.out.println("i:"+i);
	}
}


