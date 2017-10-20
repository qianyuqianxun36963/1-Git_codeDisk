package java语言.d_系统.io操作;
import java.util.Scanner;


public class 测试题标准输入输出 {
	public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        String str = in.nextLine();
        char chr = in.next().charAt(0);
        System.out.println(str + chr);
        
        while (in.hasNextInt()) {//注意while处理多个case
            int a = in.nextInt();
            int b = in.nextInt();
            System.out.println(a + b);
        }
    }
}


