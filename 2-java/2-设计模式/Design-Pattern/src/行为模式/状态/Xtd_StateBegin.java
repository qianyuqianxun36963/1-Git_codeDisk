package 行为模式.状态;

public class Xtd_StateBegin extends Impl_State{
	private static Xtd_StateBegin statebegin = null;
	
	public static Xtd_StateBegin getInstance(){
		if(statebegin == null)
			return new Xtd_StateBegin();
		else 
			return statebegin;
	}
	
	public void begin(){
		System.out.println("the state is begin now.");
	}

	public void send() {
		System.out.println("the state is begin now. can't send.");
	}

	public void close() {
		System.out.println("the state is begin now. can't close.");
	}
}
