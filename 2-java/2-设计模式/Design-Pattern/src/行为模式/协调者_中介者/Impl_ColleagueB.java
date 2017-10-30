package 行为模式.协调者_中介者;
/**
 *  A concrete colleague 
 */

public class Impl_ColleagueB implements I_Colleague {
    private final String type = "B";
    private I_Mediator med;
    public Impl_ColleagueB(I_Mediator m) {
        med = m;
        med.Register(this, type);
    }
    public void Change() {
        System.out.println("-----  B changed now !  -----");
        med.Changed(type);
    }
    public void Action() {
        System.out.println("  B is changed by mediator ");
    }
}