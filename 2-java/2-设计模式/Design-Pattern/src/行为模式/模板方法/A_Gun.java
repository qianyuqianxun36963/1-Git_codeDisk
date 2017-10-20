package 行为模式.模板方法;

public abstract class A_Gun {
	private int bullets;
	public int getBullets(){return this.bullets;}
	public void setBullets(int num){
		this.bullets = num;
	};
	public void shoot(){
		if(this.bullets>0){ 
			this.bullets--;
			System.out.println("pong!-----=>");
		}
		else {System.out.print("there is no bullet");}
	};
}
