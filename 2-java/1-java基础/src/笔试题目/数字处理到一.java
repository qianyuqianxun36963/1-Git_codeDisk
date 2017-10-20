package 笔试题目;

public class 数字处理到一 {
	public static void main(String[] args) throws Exception {
		int number=121;
//		System.out.println(number);
		int steps=getNumberOne(number);
		System.out.println(steps);
	}
	
	public static int getNumberOne(int num){
		if(num==1) { return 1;}
		if(num%2==0){
//			System.out.println(getNumberOne(num/2)+1); 
			return(getNumberOne(num/2)+1);
			}
		else {
			int x=getNumberOne(num+1)+1;
			int y=getNumberOne(num-1)+1;
			if(x<y){System.out.println(x);return x;}
			else{System.out.println(y);return y;}
		}
	}
}

