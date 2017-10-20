package java����.a_��֯.a_�﷨.������;

enum myenum { I, Love, You };

public class Switch��� {
	public static void main(String[] args) {
		Switch��� test = new Switch���();
		test.testChar();
		test.testString();
		test.testEnum();
		test.testInt();
		test.testInteger();
//		test.testLong();
	}
	
	//�� Java 7֮ǰ��switch ֻ��֧�� byte��short��char��int�������Ӧ�ķ�װ���Լ� Enum ���͡��� Java 7�У�String֧�ֱ������ˡ�
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
	
	//֧�� byte��short��char��int�������Ӧ�ķ�װ���Լ� Enum ���͡�
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
//	//long ���Ͳ�֧�֡�
//	public void testLong(){
//		long[] num = {1,2,3};
//		for(long l:num){
//			switch(l){
//				case 1:System.out.println("this is 1");
//			}
//		}
//	}
	
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


