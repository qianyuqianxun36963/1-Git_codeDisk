package 笔试题目;

public class 股市求利润 {

	public static void main(String[] args) throws Exception {
    int[] a={1,2,3,4,1,1,5,1,23,21,45,2,3,87,94,1,2,21,1};
    int Max=calculateMax(a);
    System.out.println("Max:"+Max);
	}

	
	public static int calculateMax(int[] prices) throws Exception {
		// 请在此添加代码
		int length=prices.length;
		//System.out.println("length"+length);
		int[] earns=new int[length-1];
		for(int i=0;i<length-1;i++) 
			{earns[i]=prices[i+1]-prices[i];System.out.println("earns"+earns[i]);}

		int[] sum=new int[length];
		int[] max=new int[length];
		max[0]=0;
		sum[0]=0;
		int k=0;
		for(int j=0;j<length-1;j++){
			sum[k]=earns[j]+sum[k];
			if (max[k]<sum[k]) max[k]=sum[k];
			if(sum[k]<=0) {k++;sum[k]=0;max[k]=0;}
		}

		//返回MAX数组中，最大的max值
		if(k==0) return max[0];
		else if(k==1) return max[0]+max[1];
		else {
		int max1=max[0],max2=max[1];
			if (max1<max2) {max1=max1+max2;max2=max1-max2;max1=max1-max2;}
			for(int i=2;i<=k;i++){
				if(max[i]>max1){max2=max1;max1=max[i];}
				else if(max[i]>max2) max2=max[i];
				else ;	
			}
			return max1+max2;
        }
}
}