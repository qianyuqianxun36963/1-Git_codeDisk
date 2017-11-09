package java语言.d_系统.io操作;

import java.io.*;

public class IO读写 {
    public static void main(String args[]) throws IOException{
        //ReaderAndWriter_file.test();             //字符、文件
        //ReaderAndWriter_chararray.test();     //字符、内存
        //ReaderAndWriter_string.test();        //字符、内存
        //ReaderAndWriter_buffer.test();        //字符、文件缓存
        //ReaderAndWriter_buffer.test2();        //字符、文件缓存
        
        //InputAndOutputStream_file.test();        //字节、文件
        //InputAndOutpurStream_byteArray.test();//字节、内存
        //InputAndOutputStream_data.test();        //字节、文件和内存
        //InputAndOutputStream_object.test();    //字节、文件和内存
        
        //MyInputStreamReader.test();
        MyOutputStreamWriter.test();
    }
}

class data {
    static File f=new File("");
    static String fpath= f.getAbsolutePath();
    static String filename=fpath+"/src/java语言/d_系统/io操作/files/datas.txt";
    static String outfilename=fpath+"/src/java语言/d_系统/io操作/files/outdatas.txt";
    static File file=new File(filename);
    
    static char[] chararry="hello world".toCharArray();
    static byte[] bytearry="hello world".getBytes();

    //给出文件路径,如果文件不存在,这个函数会判断并创建。
    @SuppressWarnings("unused")
    private static void mikdir(String filePath){
        try{
            filePath = filePath.replace("\\", "/");
            String folderPath = filePath.substring(0,filePath.lastIndexOf("/"));
            File file = new File(folderPath);
            if(!file.isDirectory()){
                file.mkdirs();
            }
        }catch(Exception e){
        }
    }
}

/***************** 基于字符流的stream *****************/
/***************** 分类:字符  *****************/
//Reader和Writer类也是字符流的底层，最基础的,想到与接口一样。很多其他的是他的子类。
class ReaderAndWriter{
    //可以作为基类，实现多态。
}

/***************** 分类:字符、文件  *****************/
//程序(保存)->文件->程序(访问)。
//fileReader和fileWriter是很基础的,实际用的少. 基础！！
class ReaderAndWriter_file{
    public static void test(){
        try{
            FileWriter fw=new FileWriter(data.file);
            fw.write(data.chararry); //这里,如果目的文件不存在,回自动创建。
            fw.write(" this");
            fw.close();
            FileReader fr=new FileReader(data.file);
            int n=0;
            char b[]=new char[6];//这里，记得数组长度一定要够接住读到的数据的长度。
            while((n=fr.read(b,0,6))!=-1){
                String str=new String(b,0,n);
                System.out.println(str);
            }
            fr.close();
        }
        catch(IOException e){
            System.out.println(e);
        }
    }
}

/***************** 分类:字符、内存  *****************/
//程序(保存)->内存->程序(访问)。
//是Reader和Writer类的子类，可以作为底层流。内存的字符流
//字符"数组流"。 目的地是内存。
class ReaderAndWriter_chararray{
    //CharArrayReader 构造方法:     方法1: CharArrayReader(char[] buf) 
    //                            方法2: CharArrayReader(char[] buf, int offset, int length)
    
    //CharArrayWriter() 构造方法:  方法1: CharArrayWriter() 
    //                            方法2: CharArrayWriter(int size)
    public static void test() throws IOException{
        //感觉小数据量的时候用不到他。
        CharArrayWriter caw=new CharArrayWriter();//输出流，他是将内容写出到内存中去的。
        for(int i=20320;i<20520;i++){
            caw.write(i); //这里的i不应该超过65535,，例如655366存入的话,实际存的是65536%65535=1.
        }
        
        CharArrayReader car=new CharArrayReader(caw.toCharArray());
        for(int i=0;i<200;i++){
            int n=car.read(); //read 从此输入流中读取下一个数据字符 !!没读到数据的话，返回'-1'.
            System.out.println("序号"+n+"对应的字符是: "+(char)n);
        }
        
    }
    
}

//想到前面的字符"数组流"，这个用的多点，流的输入目的地是内存。
//是Reader和Writer类的子类，可以作为底层流。内存的字符流
class ReaderAndWriter_string{
    public static void test() throws IOException{
        //感觉小数据量的时候用不到他。
        StringWriter sw=new StringWriter();//输出流，他是将内容写出到内存中去的。
        for(int i=0;i<10;i++){
            sw.write("这里是StringWriter写内存，第"+i+"行\n"); //这里的i不应该超过255,，例如256存入的话,实际存的是256%255=1.
        }
        
        StringReader sr=new StringReader(sw.toString());
        StringBuffer sf=new StringBuffer();
        int c=sr.read();
        while(c!=-1){
            sf.append((char)c);
            c=sr.read();
        }
        System.out.println(sf.toString());
        
    }
}

/***************** 分类:字符、文件和内存  *****************/
//程序(保存)->缓存写文件对象->文件->缓存读文件对象->程序(访问)。
//基于Reader和Writer类。
//他们处理过程中数据存在哪，取决于底层流实现。
class ReaderAndWriter_buffer{
    //将文件读入缓存,再操作,方便点。单次操作，并不更快，只是方便点罢了。
    @SuppressWarnings({ "resource" })
    public static void test() throws IOException{
        
        FileWriter fw=new FileWriter(data.outfilename);
        BufferedWriter bw=new BufferedWriter(fw);
        int i=0;
        String s=null;
        while(i<10){
            i++;
            bw.write(i);
            bw.newLine();
        }
        bw.flush();
        bw.close();
        fw.close();
        
        FileReader fr_out=new FileReader(data.outfilename);
        BufferedReader br_out=new BufferedReader(fr_out);
        while((s=br_out.readLine())!=null){
            System.out.println(s);
        }
    }
    
    //将内存数据读入缓存,再操作,方便一点,但是速度更慢。
    public static void test2() throws IOException{
        StringWriter sw=new StringWriter();//输出流，他是将内容写出到内存中去的。
        for(int i=0;i<10;i++){
            sw.write("这里是StringWriter写内存，第"+i+"行\n"); //这里的i不应该超过255,，例如256存入的话,实际存的是256%255=1.
        }
        String s=null;
        StringReader sr=new StringReader(sw.toString());
        BufferedReader br=new BufferedReader(sr);
        while((s=br.readLine())!=null){
            System.out.println(s);
        }
    }
}


/***************** 基于字节流的stream *****************/
/***************** 分类:字节  *****************/
//InputStream和OutputStream是最基础的,相当于接口一样。最 基础！！
class InputAndOutputStream{
    //可以作为基类，实现多态。
}

/***************** 分类:字节、文件  *****************/
//FileInputStream和FileOutputStream是很基础的,实际用的少. 基础！！
class InputAndOutputStream_file{
    public static void test(){
        try{
            FileOutputStream fo=new FileOutputStream(data.file);
            fo.write(data.bytearry); //这里,如果目的文件不存在,回自动创建。
            //fo.write(" this");
            fo.close();
            FileInputStream fi=new FileInputStream(data.file);
            int n=0;
            byte b[]=new byte[6];//这里，记得数组长度一定要够接住读到的数据的长度。
            while((n=fi.read(b,0,6))!=-1){
                String str=new String(b,0,n);
                System.out.println(str);
            }
            fi.close();
        }
        catch(IOException e){
            System.out.println(e);
        }
    }
}


/***************** 分类:字节、内存  *****************/
//字节"数组流"。 流的目的地是内存。
class InputAndOutpurStream_byteArray{
    //ByteArrayInputStream 构造方法:     方法1: ByteArrayInputStream(byte[] buf) 
    //                                方法2: ByteArrayInputStream(byte[] buf, int offset, int length)
    
    //ByteArrayOutputStream()构造方法: 方法1: ByteArrayOutputStream()
    //                                方法2: ByteArrayOutputStream(int size)
    public static void test(){
        //感觉小数据量的时候用不到他。
        ByteArrayOutputStream baos=new ByteArrayOutputStream();//输出流，他是将内容写出到内存中去的。
        for(int i=0;i<10;i++){
            baos.write(i*50); //这里的i不应该超过255,，例如256存入的话,实际存的是256%255=1.
        }
        
        ByteArrayInputStream bais=new ByteArrayInputStream(baos.toByteArray());
        for(int i=0;i<10;i++){
            int n=bais.read(); //read 从此输入流中读取下一个数据字节  !!没读到数据的话，返回'-1'.
            System.out.println("序号"+n+"对应的字符是"+(char)n);
        }
        
    }
}

/***************** 分类:字节、文件和内存  *****************/
//下面两种方法，构造方法是基于InputStream和OutputStream的，而上面说的两种字节流都是InputStream和OutputStream子类。
//他们处理过程中数据存在哪，取决于底层流实现。
//基于InputStream和OutputStream之上的。是InputStream和OutputStream的子类。
class InputAndOutputStream_object{
    
}


//基于InputStream和OutputStream之上的。
class InputAndOutputStream_data{
    
}

/*************** 字节流与字符流的转换。***************/
//FileWriter和FileReader都不支持通过参数指定编码方式，
//而OutputStreamWriter和InputStreamReader可以。这两个类从名字上就可以看到是字节流和字符流的组合，实际上也是连接两者的桥梁
class MyInputStreamReader{
    @SuppressWarnings("resource")
    public static void test() throws IOException{
        InputStreamReader inputread = new InputStreamReader(new FileInputStream(data.filename),"UTF-8");
        //InputStreamReader inputread = new InputStreamReader(new FileInputStream(data.filename),"GBK");
        BufferedReader br=new BufferedReader(inputread);
        String s=null; 
        StringBuffer sb=new StringBuffer();
        while((s=br.readLine())!=null){
            sb.append(s);
        }
        System.out.println(sb.toString());
    }
}

class MyOutputStreamWriter{
    //将字符串以utf-8格式保存。
    public static void test() throws IOException{
        Writer out = new BufferedWriter( new OutputStreamWriter(new FileOutputStream(data.filename),"GBK"));
        //Writer out = new BufferedWriter( new OutputStreamWriter(new FileOutputStream(data.filename),"utf-8"));
        //OutputStreamWriter out = new OutputStreamWriter(new FileOutputStream(data.filename),"utf-8");
        out.write("这里是汉字");//字符串是有编码的，java默认的是GBK。所以out的编码需设置为GBK。 这里的字符串也可能是其他编码方式，则根据情况设置out编码方式。
        out.flush();
        out.close();
        System.out.println("success...");
    }
}

