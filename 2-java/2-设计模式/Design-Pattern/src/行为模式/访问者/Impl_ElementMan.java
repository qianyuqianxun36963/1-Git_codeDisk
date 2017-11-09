package 行为模式.访问者;

public class Impl_ElementMan implements I_Element{
    String name;
    Impl_ElementMan(String name){this.name = name;}
    
    public void accpet(I_Visitor visitor) {
        visitor.getResponse_from_Man(this);
    }
}
