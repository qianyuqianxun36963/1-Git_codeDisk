package 行为模式.访问者;

public interface I_Visitor {
	void getResponse_from_Man(Impl_ElementMan a);
	void getResponse_from_Woman(Impl_ElementWoman b);
}
