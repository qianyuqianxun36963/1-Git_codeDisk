package 行为模式.状态;

public class Xtd_StateSend extends Impl_State{
	private static Xtd_StateSend statesend = null;
	
	public static Xtd_StateSend getInstance(){
		if(statesend == null)
			return new Xtd_StateSend();
		else 
			return statesend;
	}
	
	public void send(){
		System.out.println("the state is send now.");
	}

	@Override
	public void begin() {
		System.out.println("the state is send now. can't begin.");
	}

	@Override
	public void close() {
		System.out.println("the state is send now. can't close.");
	}
}
