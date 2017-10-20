package 行为模式.状态;

public class Xtd_StateClose extends Impl_State{
	private static Xtd_StateClose stateclosed = null;
	
	public static Xtd_StateClose getInstance(){
		if(stateclosed == null)
			return new Xtd_StateClose();
		else 
			return stateclosed;
	}
	
	public void close(){
		System.out.println("the state is closed now.");
	}


	@Override
	public void begin() {
		System.out.println("the state is closed now. can't begin.");
	}

	@Override
	public void send() {
		System.out.println("the state is closed now. can't send.");
	} 
}
