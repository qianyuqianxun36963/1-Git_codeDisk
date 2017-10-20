package 行为模式.协调者_中介者;
/**
 *  A test client
 */
public class Client  {
    public static void main(String[] args) {
        I_Mediator myMed = new Impl_ConcreteMediator();
        Impl_ColleagueA a = new Impl_ColleagueA(myMed);
        Impl_ColleagueB b = new Impl_ColleagueB(myMed);
        Impl_ColleagueC c = new Impl_ColleagueC(myMed);

        a.Change();
        b.Change();
        c.Change();
    }
}