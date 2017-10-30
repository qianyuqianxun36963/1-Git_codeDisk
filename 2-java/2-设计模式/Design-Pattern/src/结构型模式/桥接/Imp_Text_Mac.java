package 结构型模式.桥接;

/**
 *  The ConcreteImplementor
 */
public class Imp_Text_Mac implements I_Text {
    public Imp_Text_Mac() {
    }
    public void DrawTextImp() {
        System.out.println("The text has a Mac style !");
    }
}