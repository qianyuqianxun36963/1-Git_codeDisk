package 行为模式.状态;

public class StateContext {
    private I_State currentState;
    
    StateContext(){
        currentState = Xtd_StateClose.getInstance();
    }
    
    public void changeState(I_State s){this.currentState = s;};
    
    public void begin(){this.currentState.begin();};
    public void send(){this.currentState.send();};
    public void close(){this.currentState.close();};
}
