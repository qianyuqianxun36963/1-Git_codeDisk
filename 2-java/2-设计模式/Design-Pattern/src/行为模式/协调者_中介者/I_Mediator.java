package ��Ϊģʽ.Э����_�н���;
/**
 *  An abstract Mediator
 */
public interface I_Mediator  {
    public void Register(I_Colleague c, String type);
    public void Changed(String type);
}