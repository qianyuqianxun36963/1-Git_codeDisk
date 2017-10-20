package 行为模式.协调者_中介者;
/**
 *  A concrete colleague 
 */

public class Impl_ColleagueC implements I_Colleague {
    private final String type = "C";
    private I_Mediator med;
    public Impl_ColleagueC(I_Mediator m) {
        med = m;
        med.Register(this, type);
    }
    public void Change() {
        System.out.println("-----  C changed now !  -----");
        med.Changed(type);
    }
    public void Action() {
        System.out.println("  C is changed by mediator ");
    }
}