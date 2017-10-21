package 辅.异常;

//堆栈为空时出栈或取栈顶元素抛出此异常
@SuppressWarnings("serial")
public class StackEmptyException extends RuntimeException{
	
	public StackEmptyException(String err) {
		super(err);
	}	
}
