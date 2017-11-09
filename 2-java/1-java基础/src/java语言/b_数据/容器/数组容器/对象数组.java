package java语言.b_数据.容器.数组容器;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class 对象数组 {
    public static void main(String[] args) {
//        Scanner in=new Scanner(System.in);
        
        int[] a=new int[4];
//        a[0]=in.nextInt();          //简单数据类型数组可以直接使用。
        a[0]=1; 
        System.out.println(a[0]);
        
        Edge[] edge=new Edge[4];
        edge[0] = new Edge(1,2,3);  //对象数组在使用时，必须要先实例化数组对象。 不能直接使用。
//        edge[0].u=in.nextInt();
        edge[0].u=1;
        System.out.println(edge[0].u);

//        容器数组
//        ArrayList[] zoneArrows = new ArrayList[4](); //这种方式是不行的。
        ArrayList[] zoneArrows = new ArrayList[4];
        
//        ArrayList<Integer>[] typeArrays = new ArrayList<Integer>[4]();
//        ArrayList<Integer>[] typeArrows = new ArrayList<Integer>[4]; //这里去掉泛型限定就可以。加了泛型限定后，数组的定义形式就不行了。
        ArrayList<Integer> zoneArrow = new ArrayList<Integer>(); 
        
        ArrayList al=new ArrayList();
        ArrayList al1=new ArrayList(); al1.add(111);
        ArrayList al2=new ArrayList(); al2.add("222");
        
        ArrayList[] ArrayListArrays = new ArrayList[4];
//        ArrayList<Integer> result = new ArrayList<Integer>[4]; //加泛型限定就不行了。
        ArrayListArrays[0] = al;
        ArrayListArrays[1] = al1;
        ArrayListArrays[2] = al2;
        ArrayList al3 = new ArrayList(); al3.add("3");al3.add("33");al3.add("333");
        ArrayListArrays[3] = al3;
        visitList_every(ArrayListArrays);
        
//        首选是这种方式，首先数组里面都指向同一个ArrayList对象引用，虽然改变该引用，全部元素都会修改，但是没事！！
        ArrayList[] sameElementArrayListArrays = new ArrayList[]{al,al};
        sameElementArrayListArrays[0] = al1;
        sameElementArrayListArrays[1] = al2;
        visitList_every(sameElementArrayListArrays);
        
        ArrayList[] diffElementArrayListArrays = new ArrayList[]{new ArrayList(),new ArrayList()};
        diffElementArrayListArrays[0] = al1;
        diffElementArrayListArrays[1] = al2;
        visitList_every(diffElementArrayListArrays);
        
//        ArrayList[] nullArrayListArrays = new ArrayList[]{null,null};
//        nullArrayListArrays[0] = al; //NullPointerException
//        visitList_every(nullArrayListArrays);
        
//        数组容器    
        ArrayList<int[]> myList=new ArrayList<int[]>();
        myList.add(new int[]{2,3,0});
        myList.add(new int[]{1,2,3,4});
        myList.add(new int[]{2,5,6,1,5});
        //myList.add(new char[]{'a'});  //编译通不过。
        for(int[] intArr:myList){
            System.out.println(Arrays.toString(intArr));
        }
    }
    
    //遍历一个list对象。
    public static void visitList_every(ArrayList[] zoneArrows){
        for(ArrayList zoneArrow: zoneArrows){
            for(Object value:zoneArrow){  
                System.out.print(value+" ");
            }  
        }
        System.out.println();
    }
}

class Edge{
    public int u,v;//起点，终点
    int weight;//边的权重
    Edge(int a,int b,int c){
        u=a;v=b;weight=c;
    }
}

