package java语言.c_特性.异常处理;

public class 异常的注意点 {
	public static void main(String args[]){
		int x = executeOrder();
		System.out.println(x);
		
		x = multiReturn();
		System.out.println(x);
	}

	static int executeOrder(){
		int x = 1;
		try{
			return x;
			//System.out.println(x);
		}finally{
			x = 10;
			System.out.println(x);
		}
	}
	
	@SuppressWarnings("finally")
	static int multiReturn(){
		int x = 1;
		int y = 10;
		try{
			return x;
		}finally{
			return y;
		}
	}
	
}
