package java”Ô—‘.z_common.utils;

public class Myutils {
	public static void print(Object obj){
		System.out.print(obj.toString());
	}
	
	public static void println(Object obj){
		System.out.println(obj.toString());
	}

	public static void println(){
		System.out.println();
	}
}

class Gerbil {
	private int gerbilNumber;
	public Gerbil(int i) {
		gerbilNumber = i;
	}
	public void hop() {
		System.out.println("gerbil " + gerbilNumber + " hops");
	}
}
