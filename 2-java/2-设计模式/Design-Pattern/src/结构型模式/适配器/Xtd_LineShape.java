package 结构型模式.适配器;

public class Xtd_LineShape extends Shape {
	public void draw() {System.out.println("this is Line drawing");};
	public String getText(){return "this is a Line";};
}
