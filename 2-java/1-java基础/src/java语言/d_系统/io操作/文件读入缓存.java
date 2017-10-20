package java语言.d_系统.io操作;

import java.io.BufferedReader;  
import java.io.File;  
import java.io.FileNotFoundException;  
import java.io.FileReader;  
import java.io.IOException;  
import java.util.ArrayList;  
import java.util.regex.Matcher;  
import java.util.regex.Pattern;  

public class 文件读入缓存 {
	public static void main(String args[]){
		CacheTest.test();
	}
}

class Cache {  
    @SuppressWarnings("rawtypes")
	private ArrayList list = new ArrayList();  //保存从文件中读取的内容  
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
    	File file = new File(curPath+"/src/java语言/d_系统/io操作/files/BufferTest.txt");

    	CacheTest t = new CacheTest();  
          
        long start = System.currentTimeMillis();  
        for(int i=0;i<1000;i++)
        t.search1(file, "//.+");   //匹配注释 
        System.out.println("没有用缓存耗时："+(System.currentTimeMillis()-start)+"MS");  
          
        start = System.currentTimeMillis();  
        for(int i=0;i<1000;i++)
        t.search2(file, "//.+");   //匹配注释 
        System.out.println("用缓存耗时："+(System.currentTimeMillis()-start)+"MS");  
    }  
  
    
    
    public void search1(File file,String pattern){  //不使用缓存  
        try {  
            FileReader fr = new FileReader(file);  
            BufferedReader br = new BufferedReader(fr);  
            String line;  
            Pattern searched = Pattern.compile(pattern);  
            Matcher lm;  
            int lines = 0; //记录注释行数  
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
      
    public void search2(File file,String pattern){ //使用缓存，  
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