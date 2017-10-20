package 行为模式.协调者_中介者;
/**
 *  An abstract Mediator
 */
public interface I_Mediator  {
    public void Register(I_Colleague c, String type);
    public void Changed(String type);
}