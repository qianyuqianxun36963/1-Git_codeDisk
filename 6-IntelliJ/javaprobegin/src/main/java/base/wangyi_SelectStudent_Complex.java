package base;

import java.util.*;

public class wangyi_SelectStudent_Complex {
    public static void main(String args[]){
        Scanner in = new Scanner(System.in);
        int num = in.nextInt();
        List nodelist = new ArrayList<Node>();
        List resultlist = new ArrayList<Node>();
        for(int i=0;i<num;i++){
            int temp = in.nextInt();
            Node node = new Node(i,temp);
            nodelist.add(node);
        }
        int picknum = in.nextInt();
        int step = in.nextInt();

        Collections.sort(nodelist);

        for(int j=0;j<picknum;j++) {
            resultlist.set(j,nodelist.get(j));
        }

        while (true){
            if (check(resultlist,step)) break;
            for(int j=0;j<picknum;j++){
                changeResultlist(resultlist,nodelist,j);
            }
        }
    }

    public static boolean check(List nums,int step){
        return false;
    }

    public static void changeResultlist(List resultList,List nodelist,int j){

    };

    static class Node implements Comparable{
        private int order;
        private int value;

        Node(int order,int value){
            this.order = order;
            this.value = value;
        }

        public int compareTo(Object obj) {// Comparable接口中的方法
            Node node = (Node) obj;
            return this.order - node.order; // 按书的id比较大小，用于默认排序
        }

        public int getOrder() {
            return order;
        }

        public void setOrder(int order) {
            this.order = order;
        }

        public int getValue() {
            return value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }
}

