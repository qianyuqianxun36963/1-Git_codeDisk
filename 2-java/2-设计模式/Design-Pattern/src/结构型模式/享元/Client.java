package �ṹ��ģʽ.��Ԫ;

import java.util.*;

//���͵İ�������java�����String�ࡣ
//String n = "hello";String m = "hello"
//��ʱ��m=n��true�� mһ��ʼ��ûʵ�����ġ�
//��m = m+"you"
//��ʱ�أ�m=n����false��m��ʱ���ʵ�����ġ�

public class Client  {
    public static void main(String[] args) {
        int[] size = {8, 9, 10, 11, 12};
        String[] color = {"FFFFFF", "000000", "FF00FF", "CCCCCC", "111111"};
        String string = "A test string";
        
        FlyweightFactory myFontFactory = new FlyweightFactory();
        for(int i = 0; i < string.length(); i++) {
            int j = 0;
            j = (int)Math.floor(Math.random()*5);
            //System.out.println("j is:" + j + "---" +aString.substring(i, i+1));
            myFontFactory.GetFlyWeight(string.substring(i, i+1)).SetFont(color[j], size[j]);
        }
        
        Hashtable<?, ?> myHashTable = myFontFactory.GetFactory();
        System.out.println("Hash table size is:" + myHashTable.size());
        for(int i = 0; i < string.length(); i++) {
            ((I_Flyweight)myHashTable.get(string.substring(i, i+1))).GetFont();
        }
    }
}