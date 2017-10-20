package java����.b_����.����.ö����;

//java.lang.Object
//�̳��� java.lang.Enum<E>

//��Ҫ������switch���õĻ������ͻ����ˡ�
//�� Java 7֮ǰ��switch ֻ��֧�� byte��short��char��int�������Ӧ�ķ�װ���Լ� Enum ���͡��� Java 7�У�String֧�ֱ������ˡ�
//ö�ٵ������У�ֻ��ʹ���ַ�����

enum Shrubbery { GROUND, CRAWLING, HANGING }
//enum BooleanEnum {true,false} ����
//enum IntEnum {1,2,3} ����
//enum CharEnum {a,b,c} ��ȷ

public class ö��_Enum {
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