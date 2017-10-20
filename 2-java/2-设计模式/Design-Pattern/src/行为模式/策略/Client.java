package 行为模式.策略;
//40 10 30 10 20 30 30 20 20 30 13645645571
public class Client {
    public static void main(String[] args) {
        int lineCount = 4;
        int lineWidth = 12;
        
        Context myContext = new Context();
        String s = "This is a test string ! This is a test string ! This is a test string ! This is a test string ! This is a test string ! This is a test string !";
        myContext.setText(s);
        
        StrategyA strategyA = new StrategyA();
        StrategyB strategyB = new StrategyB();
        
        myContext.setLineWidth(lineWidth);
        myContext.setStrategy(strategyA);
        myContext.drawText();

        myContext.setLineCount(lineCount);
        myContext.setStrategy(strategyB);
        myContext.drawText();
    }
}
