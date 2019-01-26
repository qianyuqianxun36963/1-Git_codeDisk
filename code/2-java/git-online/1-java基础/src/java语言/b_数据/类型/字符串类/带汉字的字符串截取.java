package java语言.b_数据.类型.字符串类;

//关键点：
//string.getBytes();
//bytes[i]<0;

public class 带汉字的字符串截取 {
    public static void main(String args[]){
        String str = "a啊b吧";
        int num = trimGBK(str.getBytes(),2);     //String.getBytes() ,按照字节进行操作，获取字节数组。
        System.out.println(str.substring(0,num));//String.substring(),按照字符进行操作，截取字符子串。
    }
    
    public static int trimGBK(byte[] bytes,int n){
        int num = 0;
        boolean isChinese = false;
        for(int i = 0;i < n;i++){
            if(bytes[i]<0&&!isChinese){ //这里要注意，汉字的话，头一个字节取值是负值。
                isChinese = true;
            }else{
                num ++;
                isChinese = false;
            }
        }
        return num;
    }
}
