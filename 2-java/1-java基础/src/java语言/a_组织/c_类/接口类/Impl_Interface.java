package java����.a_��֯.c_��.�ӿ���;

public class Impl_Interface implements I_interFace {

	private Object data;
	
	@Override
	public void setData(Object o) {
		data = o;
	}

	@Override
	public Object getData() {
		return data;
	}

	@Override
	public int getAge() {
		return I_interFace.age;
	}

}
