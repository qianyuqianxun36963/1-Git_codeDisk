package 结构型模式.适配器;

public class Client {    
    public static void main(String args[]){
        Shape shape;
        
        //线形模型
        shape = new Xtd_LineShape();
        shape.draw();
        System.out.println(shape.getText());
        
        //文字模型
        shape = new Xtd_TextShape();
        shape.draw();
        System.out.println(shape.getText());
    }
}
