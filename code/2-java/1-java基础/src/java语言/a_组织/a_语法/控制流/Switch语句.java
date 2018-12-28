package java语言.a_组织.a_语法.控制流;

enum myenum { I, Love, You };

public class Switch语句 {
    public static void main(String[] args) {
        Switch语句 test = new Switch语句();
        test.testChar();
        test.testString();
        test.testEnum();
        test.testInt();
        test.testInteger();
//        test.testLong();
    }
    
    //在 Java 7之前，switch 只能支持 byte、short、char、int或者其对应的封装类以及 Enum 类型。在 Java 7中，String支持被加上了。
    public void testString(){
        String[] s = {"he","she","it"};
        for(int i = 0; i < s.length; i++) {
            String str = s[i];
            System.out.print(str + ": ");
            switch(str) {
                case "he":
                case "she": System.out.println("human");
                break;
                case "it": System.out.println("animal");
                break;
                default: System.out.println("consonant");
            }
        }
    }
    
    //支持 byte、short、char、int或者其对应的封装类以及 Enum 类型。
    public void testChar(){
        for(int i = 0; i < 10; i++) {
            char c = (char)(Math.random() * 26 + 'a');
            System.out.print(c + ": ");
            switch(c) {
                case 'a':
                case 'e':
                case 'i':
                case 'o':
                case 'u': System.out.println("vowel");
                break;
                case 'y':
                case 'w': System.out.println("Sometimes a vowel");
                break;
                default: System.out.println("consonant");
            }
        }
    }
    
    public void testEnum(){
        for(myenum mem : myenum.values()){
            switch(mem){
                case I: System.out.println("I"); break;
                case Love:System.out.println("Love"); break;
                case You:System.out.println("You"); break;
            }
        }
    }
//    //long 类型不支持。
//    public void testLong(){
//        long[] num = {1,2,3};
//        for(long l:num){
//            switch(l){
//                case 1:System.out.println("this is 1");
//            }
//        }
//    }
    
    public void testInt(){
        int[] num = {1,2,3};
        for(int i:num){
            switch(i){
                case 1:System.out.println("this is int 1");
            }
        }
    }
    
    public void testInteger(){
        Integer[] num = {111,222,333};
        for(Integer i:num){
            switch(i){
                case 111:System.out.println("this is Integer 111");
            }
        }
    }
}


