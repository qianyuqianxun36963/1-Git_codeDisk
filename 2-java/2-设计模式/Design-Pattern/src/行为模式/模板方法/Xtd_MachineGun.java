package 行为模式.模板方法;

public class Xtd_MachineGun extends A_Gun{
    Xtd_MachineGun(int num){
        this.setBullets(num);
    }
    public void tututu(){
        if(this.getBullets()>0){
            System.out.print("\nthis is tututu: pong ---");
            for(int i=0;this.getBullets()>0&&i<5;i++){
                System.out.print(" =>");
                this.setBullets(this.getBullets()-1);
            }
        }
    }
}
