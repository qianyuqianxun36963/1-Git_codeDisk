package java����.b_����.����.��������;

//ÿһ�ж����մ����ҵ�����˳������                           
//ÿһ�ж����մ��ϵ��µ�����˳������
//�����һ������������������һ����ά�����һ���������ж��������Ƿ��и�������

// ���µ����飬��������ʱ�򣬴����£����������������Ը��졣
//    1,2,3,4,5
//    3,4,5,6,7
//    4,5,6,7,8



public class ������صĲ��� {
	public static void main(String[] args) {
		int array[][] = {{1,2,8,9},{2,4,9,12},{4,7,10,13},{6,8,11,15}};
		int target = 7;
		boolean x = Solution.Find2(array, target);
		System.out.println(x);
	}
}


class Solution {
	//����һ�������������������á�
    public static boolean Find1(int [][] array,int target) {
        for(int i = 0;i<array.length;i++)
        {
        	for(int j = 0;j<array[0].length;j++)
        	{
        		if (array[i][j] == target) {return true;}
        	}
        }
        return false;
    }
    
    //��������ʹ�ô����»������������ķ�����
    public static boolean Find2(int [][] array,int target) {
    	int x = array.length;
    	int y = array[0].length;
    	int i = 0;
    	int j = y-1;
    	while(i<x&&j>=0){
        if(array[i][j]==target) {return true;}
        else 
            {
        	    if (array[i][j]<target) i++;
        	    else j--;
            }
    	}
        return false;
    }
       
}
