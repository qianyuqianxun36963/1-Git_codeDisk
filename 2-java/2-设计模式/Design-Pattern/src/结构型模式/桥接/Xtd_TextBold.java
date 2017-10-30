package 结构型模式.桥接;

/**
 *  The RefinedAbstraction
 */

public class Xtd_TextBold extends A_Text {
    private I_Text imp;
    
    public Xtd_TextBold(String type) {
        imp = GetTextImp(type);
    }
    public void DrawText(String text) {
        System.out.println(text);
        System.out.println("The text is bold text!");
        imp.DrawTextImp();
    }
}