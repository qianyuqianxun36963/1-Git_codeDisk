package ��Ϊģʽ.����;

public class Client {
	public Client() {
    }
    public static void main(String[] args) {
    	   //���֣��Լ��ƵĿ���
           Light testLight = new Light();
           LightOnCommand testLOC = new LightOnCommand(testLight);
           LightOffCommand testLFC = new LightOffCommand(testLight);
           
           Switch lightSwitch = new Switch(testLOC, testLFC);
           lightSwitch.flipUp( );
           lightSwitch.flipDown( );
           
           //���ȣ��Լ����ȵĿ���
           Fan testFan = new Fan( );
           FanOnCommand foc = new FanOnCommand(testFan);
           FanOffCommand ffc = new FanOffCommand(testFan);
           
           Switch fanSwitch = new Switch( foc,ffc);
           fanSwitch.flipUp( );
           fanSwitch.flipDown( );
    }
}
