package 行为模式.策略;
/**
 *  The public interface to support varies arithmetic
 */
public interface Strategy {
    public void drawText(String s, int lineWidth, int lineCount);
}