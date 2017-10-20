package 结构型模式.外观;

public class Client {
	public static void main(String[] args) {
        Facade facade = new Facade();
        facade.sing();
        facade.dance();
    }
}
