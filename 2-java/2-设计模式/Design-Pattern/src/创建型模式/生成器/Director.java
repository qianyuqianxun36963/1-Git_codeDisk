package 创建型模式.生成器;

public class Director {
	private I_Builder builder;
	public Director(I_Builder builder){
		this.builder = builder;
	}
	
	public I_Computer produceComputer(){
		builder.buildComputer();
		builder.addItem();
		I_Computer computer = builder.getComputer();
		return computer;
	}
}
