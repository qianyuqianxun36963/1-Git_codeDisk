package 结构型模式.桥接;

/**
 *  A test client
 */
public class Client  {
    public Client() {
    }

    public static void main(String[] args) {
        A_Text myText = new Xtd_TextBold("Mac");
        myText.DrawText("=== A test String ===");

        myText =  new Xtd_TextBold("Linux");
        myText.DrawText("=== A test String ===");

        System.out.println("------------------------------------------");
        
        myText =  new Xtd_TextItalic("Mac");
        myText.DrawText("=== A test String ===");

        myText =  new Xtd_TextItalic("Linux");
        myText.DrawText("=== A test String ===");        
    }
}