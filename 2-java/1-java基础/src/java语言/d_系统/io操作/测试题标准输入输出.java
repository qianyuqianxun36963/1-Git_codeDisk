package java����.d_ϵͳ.io����;
import java.util.Scanner;


public class �������׼������� {
	public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        String str = in.nextLine();
        char chr = in.next().charAt(0);
        System.out.println(str + chr);
        
        while (in.hasNextInt()) {//ע��while������case
            int a = in.nextInt();
            int b = in.nextInt();
            System.out.println(a + b);
        }
    }
}


