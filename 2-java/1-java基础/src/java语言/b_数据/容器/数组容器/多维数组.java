package java����.b_����.����.��������;

public class ��ά���� {
	public static void main(String[] args) {
	    //��ά���鶨��:
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
		
		//��ά���鶨��:
		int[][][] X3 = new int[8][][];
		
		X3[0] = X2;	
		
		int[][] X = new int[8][];
		X[0] = new int[]{1,2,3,4,5,6,7,8};	
		X3[1] = X;
		
//		X3[2][0] = new int[]{1,1,2,2,1,1,2,2,2};	 //�����ĸ�ֵ�Ǵ���ġ�	
		printArray3(X3);
	}
	
	
	public static void printArray2(int[][] x){
//		System.out.print(x.length); //����ľ��Ƕ���ʱ��ͷһ��ά��->���鳤��
		for(int i=0;i<x.length;i++){
			if(null!=x[i]){ // δ��ʼ���Ķ�ά���ݵ�һά����Ԫ���ǲ���ֱ��ʹ�õġ�
				for(int j=0;j<x[i].length;j++){
				    System.out.print(x[i][j]);
				}
				System.out.println("  ����ע�⣬�����һά��������Ѿ����������Ȼ����");
			}
		}
		System.out.println();
	}
	
	public static void printArray3(int[][][] x){
		for(int i=0;i<x.length;i++){
			if(null!=x[i]){ // δ��ʼ������ά���ݵĶ�ά����Ԫ���ǲ���ֱ��ʹ�õġ�
				System.out.println("  ����ע�⣬����Ķ�ά��������Ѿ����������Ȼ����");
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

