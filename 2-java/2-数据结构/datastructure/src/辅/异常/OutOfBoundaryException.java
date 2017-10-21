package 辅.异常;

//线性表中出现序号越界时抛出该异常
@SuppressWarnings("serial")
public class OutOfBoundaryException extends RuntimeException{
	
	public OutOfBoundaryException(String err){
		super(err);
	}
}
