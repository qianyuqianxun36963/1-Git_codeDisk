package 行为模式.状态;

public class Client {
    public static void main(String args[]){
        StateContext context = new StateContext();
        
        Xtd_StateBegin begin = new Xtd_StateBegin();
        Xtd_StateSend send = new Xtd_StateSend();
        Xtd_StateClose close = new Xtd_StateClose();
        
        context.changeState(begin);
        context.begin();
        context.send();
        context.close();
        
        context.changeState(send);
        context.begin();
        context.send();
        context.close();
        
        context.changeState(close);
        context.begin();
        context.send();
        context.close();
    }
}
