package 结构型模式.装饰;

public class Impl_Chinese implements I_Human {
	String chineseName;
	
	Impl_Chinese(String name){
		this.chineseName = name;
	}
	
	@Override
	public void wearClothes() {
		System.out.println("I am chinese!");
	}

	@Override
	public void walkToWhere() {
		System.out.println("I am chinese!");
	}

}
