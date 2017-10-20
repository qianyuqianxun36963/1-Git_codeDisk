package 结构型模式.桥接;

/**
 *  The Abstract of Text 
 */
public abstract class A_Text  {
    public abstract void DrawText(String text);
    protected I_Text GetTextImp(String type) {
        if(type.equals("Mac")) {
            return new Imp_Text_Mac();
        } else if(type.equals("Linux")) {
            return new Imp_Text_Linux();
        } else {
            return new Imp_Text_Mac();
        }
    }
}