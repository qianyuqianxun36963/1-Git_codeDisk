package 行为模式.状态;

public class Impl_State implements I_State{

    @Override
    public void begin() {
    }

    @Override
    public void send() {
    }

    @Override
    public void close() {
    }

    public void changeState(StateContext context,Impl_State state){
        context.changeState(state);
    }
}
