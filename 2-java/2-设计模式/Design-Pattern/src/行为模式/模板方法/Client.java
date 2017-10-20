package 行为模式.模板方法;

public class Client {
	public static void main(String args[]){
		A_Gun gun = new Xtd_MachineGun(22);
		gun.shoot();
		Xtd_MachineGun machinegun = (Xtd_MachineGun) gun;
		while(machinegun.getBullets()>0)
			machinegun.tututu();
	}
}
