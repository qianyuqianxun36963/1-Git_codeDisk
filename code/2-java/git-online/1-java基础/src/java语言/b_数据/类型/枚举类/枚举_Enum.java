package java语言.b_数据.类型.枚举类;

//java.lang.Object
//继承者 java.lang.Enum<E>

//不要将它与switch适用的基本类型混淆了。
//在 Java 7之前，switch 只能支持 byte、short、char、int或者其对应的封装类以及 Enum 类型。在 Java 7中，String支持被加上了。
//枚举的声明中，只能使用字符串。

enum Shrubbery { GROUND, CRAWLING, HANGING }
//enum BooleanEnum {true,false} 错误
//enum IntEnum {1,2,3} 错误
//enum CharEnum {a,b,c} 正确

public class 枚举_Enum {
     public static void main(String[] args) {
         for(Shrubbery s : Shrubbery.values()) {
             System.out.println(s + " ordinal: " + s.ordinal());
             System.out.println(s.compareTo(Shrubbery.CRAWLING) + " ");
             System.out.println(s.equals(Shrubbery.CRAWLING) + " ");
             System.out.println(s == Shrubbery.CRAWLING);
             System.out.println(s.getDeclaringClass());
             System.out.println(s.name());
             System.out.println("----------------------");
         }
         // Produce an enum value from a string name:
         for(String s : "HANGING CRAWLING GROUND".split(" ")) {
             Shrubbery shrub = Enum.valueOf(Shrubbery.class, s);
             System.out.println(shrub.toString());
         }
     }
}