import java.io.*;


public class linux���ļ�Ȩ������{
public static void main(String args[]){
try{
File f = new File("/usr/local/nginx/file/resource/test/file/123.txt");
//f.createNewFile();
RandomAccessFile af = new RandomAccessFile(f,"rw");
//af.writeDouble(1.414);  
f.setExecutable(true,false);
f.setReadable(true, false);
f.setWritable(true,false);

}
catch(Exception e){
System.out.println("new file error!");
}
}
}
