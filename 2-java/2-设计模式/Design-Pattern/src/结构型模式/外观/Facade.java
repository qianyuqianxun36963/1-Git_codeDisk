package 结构型模式.外观;

//通过这个一统一的外观，将众多格式的对象服务整合后提供给外界。
public class Facade {
    BaseClass baseclass;
    BadClass badclass;
    OldClass oldclass;
    
    Facade(){
        baseclass = new BaseClass();
        badclass = new BadClass();
        oldclass = new OldClass();
    }
    
    
    public void sing(){
        baseclass.sing();
        oldclass.sing();
    }
    public void dance(){
        baseclass.dance();
        badclass.dance();
    }
}
