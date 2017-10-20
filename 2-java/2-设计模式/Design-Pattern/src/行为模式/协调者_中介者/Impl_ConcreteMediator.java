package 行为模式.协调者_中介者;
/**
 *  A concrete mediator
 */
public class Impl_ConcreteMediator implements I_Mediator {
    private Impl_ColleagueA a;
    private Impl_ColleagueB b;
    private Impl_ColleagueC c;

    public Impl_ConcreteMediator() {
    }
    public void Register(I_Colleague colleague, String type) {
        if(type == "A") {
                a = (Impl_ColleagueA)colleague;
        } else if (type == "B") {
                b = (Impl_ColleagueB)colleague;
        } else if (type == "C") {
                c = (Impl_ColleagueC)colleague;
        }
    }
    public void Changed(String type) {
        if(type == "A") {
                b.Action();
                c.Action();
        } else if (type == "B") {
                a.Action();
                c.Action();
        } else if (type == "C") {
                a.Action();
                b.Action();
        }
    }
}