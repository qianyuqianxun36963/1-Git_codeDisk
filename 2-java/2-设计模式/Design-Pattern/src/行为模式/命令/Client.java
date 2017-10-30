package 行为模式.命令;

public class Client {
	public Client() {
    }
    public static void main(String[] args) {
    	   //灯罩，以及灯的开关
           Light testLight = new Light();
           LightOnCommand testLOC = new LightOnCommand(testLight);
           LightOffCommand testLFC = new LightOffCommand(testLight);
           
           Switch lightSwitch = new Switch(testLOC, testLFC);
           lightSwitch.flipUp( );
           lightSwitch.flipDown( );
           
           //风扇，以及风扇的开关
           Fan testFan = new Fan( );
           FanOnCommand foc = new FanOnCommand(testFan);
           FanOffCommand ffc = new FanOffCommand(testFan);
           
           Switch fanSwitch = new Switch( foc,ffc);
           fanSwitch.flipUp( );
           fanSwitch.flipDown( );
    }
}
