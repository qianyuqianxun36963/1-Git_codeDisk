package �ṹ��ģʽ.װ��;


//���涨������װ�Σ����ǵ�һ�����ڶ�����������������ϸ������װ���ߵĹ���Խ��Խ��  
class Decorator_zero extends Decorator {  

  public Decorator_zero(I_Human I_Human) {  
      super(I_Human);  
  }  

  public void goHome() {  
      System.out.println("�����ӡ���");  
  }  

  public void findMap() {  
      System.out.println("�鷿����Map����");  
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
      System.out.println("ȥ�¹����ҿ�����");  
  }  

  public void findPlaceOnMap() {  
      System.out.println("��Map�����ҡ���");  
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
      System.out.println("�ҵ�һ��D&G����");  
  }  

  public void findTheTarget() {  
      System.out.println("��Map���ҵ����ػ�԰�ͳǱ�����");  
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