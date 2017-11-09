package 行为模式.访问者;

public class Impl_VisitorB implements I_Visitor{

    @Override
    public void getResponse_from_Man(Impl_ElementMan a) {
        System.out.println("VisitorB visit man "+a.name+", this is response.");
    }

    @Override
    public void getResponse_from_Woman(Impl_ElementWoman b) {
        System.out.println("VisitorB visit woman "+b.name+", this is response.");
    }
}
