package �ṹ��ģʽ.������;

public class Client {	
	public static void main(String args[]){
		Shape shape;
		
		//����ģ��
		shape = new Xtd_LineShape();
		shape.draw();
	    System.out.println(shape.getText());
	    
	    //����ģ��
	    shape = new Xtd_TextShape();
		shape.draw();
	    System.out.println(shape.getText());
	}
}
