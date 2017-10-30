package 结构型模式.桥接;

/**
 *  The ConcreteImplementor
 */
public class Imp_Text_Linux implements I_Text {
    public Imp_Text_Linux() {
    }
    public void DrawTextImp() {
        System.out.println("The text has a Linux style !");
    }
}