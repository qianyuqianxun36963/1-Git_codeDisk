package 创建型模式.工厂模式;

public class Impl_Pen implements I_Writeable {

	@Override
	public void write() {
		System.out.println("This is write by pen.");
	}

}
