package java����.d_ϵͳ.io����;

import java.io.*;

public class IO��д {
	public static void main(String args[]) throws IOException{
		//ReaderAndWriter_file.test(); 			//�ַ����ļ�
		//ReaderAndWriter_chararray.test(); 	//�ַ����ڴ�
		//ReaderAndWriter_string.test();		//�ַ����ڴ�
		//ReaderAndWriter_buffer.test();		//�ַ����ļ�����
		//ReaderAndWriter_buffer.test2();		//�ַ����ļ�����
		
		//InputAndOutputStream_file.test();		//�ֽڡ��ļ�
		//InputAndOutpurStream_byteArray.test();//�ֽڡ��ڴ�
		//InputAndOutputStream_data.test();		//�ֽڡ��ļ����ڴ�
		//InputAndOutputStream_object.test();	//�ֽڡ��ļ����ڴ�
		
		//MyInputStreamReader.test();
		MyOutputStreamWriter.test();
	}
}

class data {
	static File f=new File("");
	static String fpath= f.getAbsolutePath();
	static String filename=fpath+"/src/java����/d_ϵͳ/io����/files/datas.txt";
	static String outfilename=fpath+"/src/java����/d_ϵͳ/io����/files/outdatas.txt";
	static File file=new File(filename);
	
	static char[] chararry="hello world".toCharArray();
	static byte[] bytearry="hello world".getBytes();

	//�����ļ�·��,����ļ�������,����������жϲ�������
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

/***************** �����ַ�����stream *****************/
/***************** ����:�ַ�  *****************/
//Reader��Writer��Ҳ���ַ����ĵײ㣬�������,�뵽��ӿ�һ�����ܶ����������������ࡣ
class ReaderAndWriter{
	//������Ϊ���࣬ʵ�ֶ�̬��
}

/***************** ����:�ַ����ļ�  *****************/
//����(����)->�ļ�->����(����)��
//fileReader��fileWriter�Ǻܻ�����,ʵ���õ���. ��������
class ReaderAndWriter_file{
	public static void test(){
		try{
			FileWriter fw=new FileWriter(data.file);
			fw.write(data.chararry); //����,���Ŀ���ļ�������,���Զ�������
			fw.write(" this");
			fw.close();
			FileReader fr=new FileReader(data.file);
			int n=0;
			char b[]=new char[6];//����ǵ����鳤��һ��Ҫ����ס���������ݵĳ��ȡ�
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

/***************** ����:�ַ����ڴ�  *****************/
//����(����)->�ڴ�->����(����)��
//��Reader��Writer������࣬������Ϊ�ײ������ڴ���ַ���
//�ַ�"������"�� Ŀ�ĵ����ڴ档
class ReaderAndWriter_chararray{
	//CharArrayReader ���췽��: 	����1: CharArrayReader(char[] buf) 
	//							����2: CharArrayReader(char[] buf, int offset, int length)
	
	//CharArrayWriter() ���췽��:  ����1: CharArrayWriter() 
	//							����2: CharArrayWriter(int size)
	public static void test() throws IOException{
		//�о�С��������ʱ���ò�������
		CharArrayWriter caw=new CharArrayWriter();//����������ǽ�����д�����ڴ���ȥ�ġ�
		for(int i=20320;i<20520;i++){
			caw.write(i); //�����i��Ӧ�ó���65535,������655366����Ļ�,ʵ�ʴ����65536%65535=1.
		}
		
		CharArrayReader car=new CharArrayReader(caw.toCharArray());
		for(int i=0;i<200;i++){
			int n=car.read(); //read �Ӵ��������ж�ȡ��һ�������ַ� !!û�������ݵĻ�������'-1'.
			System.out.println("���"+n+"��Ӧ���ַ���: "+(char)n);
		}
		
	}
	
}

//�뵽ǰ����ַ�"������"������õĶ�㣬��������Ŀ�ĵ����ڴ档
//��Reader��Writer������࣬������Ϊ�ײ������ڴ���ַ���
class ReaderAndWriter_string{
	public static void test() throws IOException{
		//�о�С��������ʱ���ò�������
		StringWriter sw=new StringWriter();//����������ǽ�����д�����ڴ���ȥ�ġ�
		for(int i=0;i<10;i++){
			sw.write("������StringWriterд�ڴ棬��"+i+"��\n"); //�����i��Ӧ�ó���255,������256����Ļ�,ʵ�ʴ����256%255=1.
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

/***************** ����:�ַ����ļ����ڴ�  *****************/
//����(����)->����д�ļ�����->�ļ�->������ļ�����->����(����)��
//����Reader��Writer�ࡣ
//���Ǵ�����������ݴ����ģ�ȡ���ڵײ���ʵ�֡�
class ReaderAndWriter_buffer{
	//���ļ����뻺��,�ٲ���,����㡣���β������������죬ֻ�Ƿ������ˡ�
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
	
	//���ڴ����ݶ��뻺��,�ٲ���,����һ��,�����ٶȸ�����
	public static void test2() throws IOException{
		StringWriter sw=new StringWriter();//����������ǽ�����д�����ڴ���ȥ�ġ�
		for(int i=0;i<10;i++){
			sw.write("������StringWriterд�ڴ棬��"+i+"��\n"); //�����i��Ӧ�ó���255,������256����Ļ�,ʵ�ʴ����256%255=1.
		}
		String s=null;
		StringReader sr=new StringReader(sw.toString());
		BufferedReader br=new BufferedReader(sr);
		while((s=br.readLine())!=null){
			System.out.println(s);
		}
	}
}


/***************** �����ֽ�����stream *****************/
/***************** ����:�ֽ�  *****************/
//InputStream��OutputStream���������,�൱�ڽӿ�һ������ ��������
class InputAndOutputStream{
	//������Ϊ���࣬ʵ�ֶ�̬��
}

/***************** ����:�ֽڡ��ļ�  *****************/
//FileInputStream��FileOutputStream�Ǻܻ�����,ʵ���õ���. ��������
class InputAndOutputStream_file{
	public static void test(){
		try{
			FileOutputStream fo=new FileOutputStream(data.file);
			fo.write(data.bytearry); //����,���Ŀ���ļ�������,���Զ�������
			//fo.write(" this");
			fo.close();
			FileInputStream fi=new FileInputStream(data.file);
			int n=0;
			byte b[]=new byte[6];//����ǵ����鳤��һ��Ҫ����ס���������ݵĳ��ȡ�
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


/***************** ����:�ֽڡ��ڴ�  *****************/
//�ֽ�"������"�� ����Ŀ�ĵ����ڴ档
class InputAndOutpurStream_byteArray{
	//ByteArrayInputStream ���췽��: 	����1: ByteArrayInputStream(byte[] buf) 
	//								����2: ByteArrayInputStream(byte[] buf, int offset, int length)
	
	//ByteArrayOutputStream()���췽��: ����1: ByteArrayOutputStream()
	//								����2: ByteArrayOutputStream(int size)
	public static void test(){
		//�о�С��������ʱ���ò�������
		ByteArrayOutputStream baos=new ByteArrayOutputStream();//����������ǽ�����д�����ڴ���ȥ�ġ�
		for(int i=0;i<10;i++){
			baos.write(i*50); //�����i��Ӧ�ó���255,������256����Ļ�,ʵ�ʴ����256%255=1.
		}
		
		ByteArrayInputStream bais=new ByteArrayInputStream(baos.toByteArray());
		for(int i=0;i<10;i++){
			int n=bais.read(); //read �Ӵ��������ж�ȡ��һ�������ֽ�  !!û�������ݵĻ�������'-1'.
			System.out.println("���"+n+"��Ӧ���ַ���"+(char)n);
		}
		
	}
}

/***************** ����:�ֽڡ��ļ����ڴ�  *****************/
//�������ַ��������췽���ǻ���InputStream��OutputStream�ģ�������˵�������ֽ�������InputStream��OutputStream���ࡣ
//���Ǵ�����������ݴ����ģ�ȡ���ڵײ���ʵ�֡�
//����InputStream��OutputStream֮�ϵġ���InputStream��OutputStream�����ࡣ
class InputAndOutputStream_object{
	
}


//����InputStream��OutputStream֮�ϵġ�
class InputAndOutputStream_data{
	
}

/*************** �ֽ������ַ�����ת����***************/
//FileWriter��FileReader����֧��ͨ������ָ�����뷽ʽ��
//��OutputStreamWriter��InputStreamReader���ԡ���������������ϾͿ��Կ������ֽ������ַ�������ϣ�ʵ����Ҳ���������ߵ�����
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
	//���ַ�����utf-8��ʽ���档
	public static void test() throws IOException{
		Writer out = new BufferedWriter( new OutputStreamWriter(new FileOutputStream(data.filename),"GBK"));
		//Writer out = new BufferedWriter( new OutputStreamWriter(new FileOutputStream(data.filename),"utf-8"));
		//OutputStreamWriter out = new OutputStreamWriter(new FileOutputStream(data.filename),"utf-8");
		out.write("�����Ǻ���");//�ַ������б���ģ�javaĬ�ϵ���GBK������out�ı���������ΪGBK�� ������ַ���Ҳ�������������뷽ʽ��������������out���뷽ʽ��
		out.flush();
		out.close();
		System.out.println("success...");
	}
}

