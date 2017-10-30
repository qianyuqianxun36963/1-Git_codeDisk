package java语言.b_数据.容器.数组容器;

public class 变长数组 {
	
	public static void main(String args[]){
		
		changAbleArray array = new changAbleArray();
		array.elements = new Object[]{0,1,2,3};
		array.expandSpace();
		array.elements[4] = 4;
		array.elements[5] = 5;
		array.elements[6] = 6;
		array.elements[7] = 7;
		
		for(int i = 0; i < array.elements.length; i++){
			System.out.println(array.elements[i]);
		}
	}
}

class changAbleArray{
	Object[] elements = new Object[4];
	
	void expandSpace(){
		Object[] a = new Object[elements.length*2];
		for (int i=0; i<elements.length; i++)
			a[i] = elements[i];
		elements = a;
	}
}