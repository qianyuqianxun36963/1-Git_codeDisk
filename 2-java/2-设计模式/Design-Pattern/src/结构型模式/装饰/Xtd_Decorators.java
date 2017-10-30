package 结构型模式.装饰;


//下面定义三种装饰，这是第一个，第二个第三个功能依次细化，即装饰者的功能越来越多  
class Decorator_zero extends Decorator {  

  public Decorator_zero(I_Human I_Human) {  
      super(I_Human);  
  }  

  public void goHome() {  
      System.out.println("进房子。。");  
  }  

  public void findMap() {  
      System.out.println("书房找找Map。。");  
  }  

  @Override  
  public void wearClothes() {  
      super.wearClothes();  
      goHome();  
  }  

  @Override  
  public void walkToWhere() {  
      super.walkToWhere();  
      findMap();  
  }  
}  

class Decorator_first extends Decorator {  

  public Decorator_first(I_Human I_Human) {  
      super(I_Human);  
  }  

  public void goClothespress() {  
      System.out.println("去衣柜找找看。。");  
  }  

  public void findPlaceOnMap() {  
      System.out.println("在Map上找找。。");  
  }  

  @Override  
  public void wearClothes() {  
      super.wearClothes();  
      goClothespress();  
  }  

  @Override  
  public void walkToWhere() {  
      super.walkToWhere();  
      findPlaceOnMap();  
  }  
}  

class Decorator_second extends Decorator {  

  public Decorator_second(I_Human I_Human) {  
      super(I_Human);  
  }  

  public void findClothes() {  
      System.out.println("找到一件D&G。。");  
  }  

  public void findTheTarget() {  
      System.out.println("在Map上找到神秘花园和城堡。。");  
  }  

  @Override  
  public void wearClothes() {  
      super.wearClothes();  
      findClothes();  
  }  

  @Override  
  public void walkToWhere() {  
      super.walkToWhere();  
      findTheTarget();  
  }  
}  