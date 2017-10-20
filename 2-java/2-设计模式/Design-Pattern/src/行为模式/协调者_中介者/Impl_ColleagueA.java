package 行为模式.协调者_中介者;

/**
 *  A concrete colleague 
 */

public class Impl_ColleagueA implements I_Colleague {
    private final String type = "A";
    private I_Mediator med;
    
    public Impl_ColleagueA(I_Mediator m) {
        med = m;
        med.Register(this, type);
    }
    public void Change() {
        System.out.println("-----  A changed now !  -----");
        med.Changed(type);
    }
    public void Action() {
        System.out.println("  A is changed by mediator ");
    }
}