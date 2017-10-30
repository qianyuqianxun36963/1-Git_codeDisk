package 行为模式.解释器;

public class Add extends Expression {
	private Expression left, right;
	public Add( Expression left, Expression right )
	{
		this.left	= left;
		this.right	= right;
	}
	public int interpret( Context con )
	{
		return(left.interpret( con ) + right.interpret( con ) );
	}
}

class Subtract extends Expression {
	private Expression left, right;
	public Subtract( Expression left, Expression right )
	{
		this.left	= left;
		this.right	= right;
	}
	public int interpret( Context con )
	{
		return(left.interpret( con ) - right.interpret( con ) );
	}
}
class Multiply extends Expression {
	private Expression left, right;
	public Multiply( Expression left, Expression right )
	{
		this.left	= left;
		this.right	= right;
	}
	public int interpret( Context con )
	{
		return(left.interpret( con ) * right.interpret( con ) );
	}
}

class Division extends Expression {
	private Expression left, right;
	public Division( Expression left, Expression right )
	{
		this.left	= left;
		this.right	= right;
	}
	public int interpret( Context con )
	{
		try{
			return(left.interpret( con ) / right.interpret( con ) );
		}catch ( ArithmeticException ae ) {
			System.out.println( "被除数为 0！ " );
			return(-11111);
		}
	}
}

class Constant extends Expression {
	private int i;
	public Constant( int i )
	{
		this.i = i;
	}
	public int interpret( Context con )
	{
		return(i);
	}
}

class Variable extends Expression {
	public int interpret( Context con )
	{
		/* this 为调用 interpret 方法的 Variable 对象 */
		return(con.LookupValue( this ) );
	}
}
