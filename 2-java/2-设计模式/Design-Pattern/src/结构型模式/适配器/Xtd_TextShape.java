package 结构型模式.适配器;

//这个是TextView的适配器
public class Xtd_TextShape extends Shape{
	public void draw() {new TextView().draw();};
	public String getText(){return "this is TextView's append function";};
}
