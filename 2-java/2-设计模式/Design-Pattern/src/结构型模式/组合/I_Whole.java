package �ṹ��ģʽ.���;

import java.util.ArrayList;

public class I_Whole  implements Cloneable{
	ArrayList<I_Part> parts = new ArrayList<I_Part>();
	I_Whole whole = null;
	
	String wholename;
	public I_Whole(String name) {
		this.wholename = name;
	}
	
	@SuppressWarnings("unchecked")
	public I_Whole clone(){
		I_Whole whole = null;
		try{  
            whole = (I_Whole)super.clone();  
            whole.parts = (ArrayList<I_Part>) this.parts.clone(); //�����в������ֶ������������
        }catch(CloneNotSupportedException e){  
            e.printStackTrace();  
        }  
        return whole; 
	}
}
