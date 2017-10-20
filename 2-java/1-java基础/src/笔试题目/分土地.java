package 笔试题目;


import java.util.Scanner;

public class 分土地 {
	public static void main(String[] args) {

		Scanner reader = new Scanner(System.in);
		
		int n = reader.nextInt();
		int m = reader.nextInt();
		
		int[][] field = new int[n][m];
		
		for(int i=0;i<n;i++){
			int row = reader.nextInt();	
			for(int j=m-1;j>=0;j--){
				field[i][j]	= row%10;
				row = row/10;
			}
		}
		
		int result = field[0][0];
		for(int i=0;i<n;i++){
			for(int j=0;j<m;j++){
                if(field[i][j]<result) result=field[i][j];				
			}
		}
				
		System.out.println(result);		
	}	
}
