package 结构型模式.外观;

class BaseClass {
    public void sing(){
        System.out.println("基本对象: 基本唱法。");
    }
    public void dance(){
        System.out.println("基本对象: 跳舞还行。");
    }
}

class OldClass {
    public void sing(){
        System.out.println("陈旧对象: 经典唱法。");
    }
    public void dance(){
        System.out.println("陈旧对象: 跳舞不好。");
    }
}

class BadClass {
    public void sing(){
        System.out.println("劣质对象: 劣质唱法。");
    }
    
    public void dance(){
        System.out.println("劣质对象: 跳舞很好。");
    }
}
