package 结构型模式.组合;

//组合模式典型例子：文章类设计
//                             文章
//        |    |    |
//组成：  插图   标题    文章
//
//在设计中       你想表示对象的部分 -整体层次结构。
//          你希望用户忽略组合对象与单个对象的不同

public class Client {
    public static void main(String args[]){
        I_Whole box = new Impl_Box("OutSide_Box");
        
        I_Part partS = new Impl_PartS("partS");
        I_Part partA = new Impl_PartA("partA");
        box.parts.add(partS);
        box.parts.add(partA);
        
        I_Whole inbox = new Impl_Box("InSide_Sox");
        inbox.whole=box.clone();
        inbox.whole.wholename = "InIn_Box";
        box.whole=inbox;
        
        printWhole(box);
    }
    
    public static void printWhole(I_Whole whole){
        System.out.println("Box: "+whole.wholename);
        for(I_Part part:whole.parts){
            System.out.println(part.name);
        }
        if(whole.whole!=null){
            System.out.println();
            printWhole(whole.whole);
        }
    }
}
