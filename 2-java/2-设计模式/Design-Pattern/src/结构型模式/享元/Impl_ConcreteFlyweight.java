package 结构型模式.享元;

/**
 *  A shared ConcreteFlyweight
 */

public class Impl_ConcreteFlyweight implements I_Flyweight {
    private String color;
    private int size;
    private String str;
    
    public Impl_ConcreteFlyweight(String s) {
        str = s;
        //id = "The char is: " + s;
    }
    public void SetFont(String _color, int _size) {
        color = _color;
        size = _size;
    }
    public void GetFont() {
        System.out.println("String :" + str + "--- color is:" + color + "--- size is:" + size);
    }
}

