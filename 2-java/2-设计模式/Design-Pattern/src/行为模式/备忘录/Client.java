package 行为模式.备忘录;

public class Client {
    public static void main(String[] args){
        Originator o = new Originator();
        o.createMemento();
        o.modifyState4Test(80);
        o.setMemento();
    }
}
