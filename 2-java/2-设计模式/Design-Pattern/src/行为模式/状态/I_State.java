package 行为模式.状态;

interface I_State {
	//void changeState(StateContext context,Impl_State state);
	
	void begin();
	void send();
	void close();
}
