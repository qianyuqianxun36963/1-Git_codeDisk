package java����.c_����.�쳣����;

public class �쳣��ע��� {
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
