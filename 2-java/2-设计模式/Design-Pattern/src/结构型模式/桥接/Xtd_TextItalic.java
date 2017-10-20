package 结构型模式.桥接;

/**
 *  The RefinedAbstraction
 */
public class Xtd_TextItalic extends A_Text {
    private I_Text imp;
    public Xtd_TextItalic(String type) {
        imp = GetTextImp(type);
    }
    public void DrawText(String text) {
        System.out.println(text);
        System.out.println("The text is italic text!");
        imp.DrawTextImp();
    }
}