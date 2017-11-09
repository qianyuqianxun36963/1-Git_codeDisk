package 结构型模式.装饰;

public abstract class Decorator implements I_Human{
    private I_Human human;  
      
    public Decorator(I_Human human) {  
        this.human = human;  
    }  
  
    public void wearClothes() {  
        human.wearClothes();  
    }  
  
    public void walkToWhere() {  
        human.walkToWhere();  
    } 
}
