package 行为模式.访问者;

public class Impl_VisitorA implements I_Visitor{

    public void getResponse_from_Man(Impl_ElementMan a) {
        System.out.println("VisitorA visit man "+a.name+", this is response.");
    }

    public void getResponse_from_Woman(Impl_ElementWoman b) {
        System.out.println("VisitorA visit woman "+b.name+", this is response.");
    }
}
