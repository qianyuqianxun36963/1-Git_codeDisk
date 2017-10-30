package java语言.b_数据.容器.数组容器;

public class 多维数组 {
	public static void main(String[] args) {
	    //二维数组定义:
		int[][] X2 = new int[8][];
		X2[0] =new int[]{0};				
		X2[1] =new int[]{2,1,1,2};		
		X2[2] =new int[]{1,1,2,2,1,1};
		X2[3] =new int[]{1,1,2,1,1};		
		X2[4] =new int[]{3,3,4,2,2};		
		X2[5] =new int[]{3,3,3,2,1,1};
		X2[6] =new int[]{2,1,4,4,3,3,2};
		X2[7] =new int[]{2,2,3,3,2,2};
		printArray2(X2);
		
		//三维数组定义:
		int[][][] X3 = new int[8][][];
		
		X3[0] = X2;	
		
		int[][] X = new int[8][];
		X[0] = new int[]{1,2,3,4,5,6,7,8};	
		X3[1] = X;
		
//		X3[2][0] = new int[]{1,1,2,2,1,1,2,2,2};	 //这样的赋值是错误的。	
		printArray3(X3);
	}
	
	
	public static void printArray2(int[][] x){
//		System.out.print(x.length); //输出的就是定义时的头一个维数->数组长度
		for(int i=0;i<x.length;i++){
			if(null!=x[i]){ // 未初始化的二维数据的一维数据元素是不能直接使用的。
				for(int j=0;j<x[i].length;j++){
				    System.out.print(x[i][j]);
				}
				System.out.println("  这里注意，输出的一维数组必须已经定义过。不然报错。");
			}
		}
		System.out.println();
	}
	
	public static void printArray3(int[][][] x){
		for(int i=0;i<x.length;i++){
			if(null!=x[i]){ // 未初始化的三维数据的二维数据元素是不能直接使用的。
				System.out.println("  这里注意，输出的二维数组必须已经定义过。不然报错。");
				for(int j=0;j<x[i].length;j++){
					if(null!=x[i][j]){
						for(int k=0;k<x[i][j].length;k++){
						    System.out.print(x[i][j][k]);
						}
						System.out.println();
					}
				}
			}
		}
		System.out.println();
	}
}

