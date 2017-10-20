package java����.d_ϵͳ.io����;

import java.io.BufferedReader;  
import java.io.File;  
import java.io.FileNotFoundException;  
import java.io.FileReader;  
import java.io.IOException;  
import java.util.ArrayList;  
import java.util.regex.Matcher;  
import java.util.regex.Pattern;  

public class �ļ����뻺�� {
	public static void main(String args[]){
		CacheTest.test();
	}
}

class Cache {  
    @SuppressWarnings("rawtypes")
	private ArrayList list = new ArrayList();  //������ļ��ж�ȡ������  
    @SuppressWarnings("unchecked")
	public Cache(File file){  
        try {  
            FileReader fr = new FileReader(file);  
            BufferedReader br = new BufferedReader(fr);  
            String line ;  
            while((line = br.readLine())!=null){  
                list.add(line);  
              
            }  
            br.close();  
        } catch (FileNotFoundException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
    }  
  
    public String getLine(int n){  
        if(n<0)return null;  
        return (String) ((n<list.size())? list.get(n):null);  
    }  
} 

class CacheTest{
	private Cache cache;  
    public static void test() {  
  
    	File directory = new File("");
    	String curPath=directory.getAbsolutePath();
    	File file = new File(curPath+"/src/java����/d_ϵͳ/io����/files/BufferTest.txt");

    	CacheTest t = new CacheTest();  
          
        long start = System.currentTimeMillis();  
        for(int i=0;i<1000;i++)
        t.search1(file, "//.+");   //ƥ��ע�� 
        System.out.println("û���û����ʱ��"+(System.currentTimeMillis()-start)+"MS");  
          
        start = System.currentTimeMillis();  
        for(int i=0;i<1000;i++)
        t.search2(file, "//.+");   //ƥ��ע�� 
        System.out.println("�û����ʱ��"+(System.currentTimeMillis()-start)+"MS");  
    }  
  
    
    
    public void search1(File file,String pattern){  //��ʹ�û���  
        try {  
            FileReader fr = new FileReader(file);  
            BufferedReader br = new BufferedReader(fr);  
            String line;  
            Pattern searched = Pattern.compile(pattern);  
            Matcher lm;  
            int lines = 0; //��¼ע������  
            while((line = br.readLine())!=null){  
                lm = searched.matcher(line);  
                if(lm.find()) lines ++;  
            }  
            System.out.print(" "+lines);  
            br.close();  
        } catch (FileNotFoundException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
          
    }  
      
    public void search2(File file,String pattern){ //ʹ�û��棬  
        if(cache==null)  
            cache = new Cache(file);  
            String line;  
            Pattern searched = Pattern.compile(pattern);  
            Matcher lm;  
            int i = 0;  
            int lines = 0;  
            while((line = cache.getLine(i++))!=null){  
                lm = searched.matcher(line);  
                if(lm.find()) lines ++;  
            }  
            System.out.print(" "+lines);  
    }  
	
}