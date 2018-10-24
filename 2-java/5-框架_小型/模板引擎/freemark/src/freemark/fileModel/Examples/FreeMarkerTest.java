package freemark.fileModel.Examples;

import java.io.*;
import java.util.*;  
import freemarker.template.*;  

public class FreeMarkerTest {
	 public static void main(String[] args){  
	        FreeMarkerTest test = new FreeMarkerTest();  
	        try {
				test.sayHelloWorld();
			} catch (IOException e) {
				e.printStackTrace();
			}  
	    }  
	    @SuppressWarnings({ "deprecation", "unchecked", "rawtypes" })
		public void sayHelloWorld() throws IOException{  
	        Configuration freemarkerCfg = new Configuration();  
	        //freemarkerCfg.setClassForTemplateLoading(this.getClass(), "/");  
	        freemarkerCfg.setDirectoryForTemplateLoading(new File(getcurpath()+"/src/freemark\\fileModel\\Examples")); 
	        freemarkerCfg.setEncoding(Locale.getDefault(), "GBK");  
	        Template template;  
	        Locale.setDefault(Locale.SIMPLIFIED_CHINESE);  
	        try{  
	            template = freemarkerCfg.getTemplate("HelloWorld.ftl");  
	            template.setEncoding("GBK");   
	  
	            User user1=new User();  
	            user1.setUserId("1111");  
	            user1.setUserName("1111");   
	  
	            User user2=new User();  
	            user2.setUserId("2222");  
	            user2.setUserName("2222");  
	            
	            User user3=new User();  
	            user3.setUserId("3333");  
	            user3.setUserName("3333");   
	  
	            //基本类型的数据
	            SimpleHash root = new SimpleHash(ObjectWrapper.BEANS_WRAPPER);  
	            root.put("scalarString", "Scalar String Test");  
	            root.put("scalarNumber", new Integer(3));  
	            
	            //List对象。
	            List scalarList = new ArrayList();  
	            scalarList.add("1");  
	            scalarList.add("2");  
	            scalarList.add("3");  
	            scalarList.add("4");  
	            scalarList.add("5");  
	            scalarList.add("6");  
	            root.put("scalarList", scalarList);  
	            
	            //Map对象。
	            SimpleHash scalarMap=new SimpleHash(ObjectWrapper.BEANS_WRAPPER); 
	            root.put("scalarMap", scalarMap); 
	            scalarMap.put("anotherString", "aaaaaaaa");  
	            scalarMap.put("anotherNumber", new Double(3.14)); 
	            
	            //list与map的组合对象。
	            List MapList=new ArrayList();   
	            for(int i=1;i<5;i++){
	            	Map row = new HashMap(); 
	            	row.put("name","苹果"+i);
	            	row.put("price",i+"00");
	            	MapList.add(row);
	            }
	            root.put("maplist",MapList);
	            
	            //直接放入javaBean对象。
	            root.put("scalarObject", new User("33","33"));
	            
	            //javaBean对象组成的list对象。 是有序的。
	            SimpleSequence userList=new SimpleSequence(ObjectWrapper.BEANS_WRAPPER);  
	            root.put("userList", userList);  
	            userList.add(user1);  
	            userList.add(user2);  
	            userList.add(user3);  
	            
	            //javaBean对象组成的map对象。
	            SimpleHash userMap=new SimpleHash(ObjectWrapper.BEANS_WRAPPER);          
	            root.put("userMap", userMap); 
	            userMap.put("1", user1); 
	            userMap.put("2", user2);
	            userMap.put("3", user3); 
	            
	            //将结果打印出来。
	            StringWriter writer = new StringWriter();  
	            template.process(root, writer);  
	            System.out.println(writer.toString());  
	        }catch(Exception e){  
	            e.printStackTrace();  
	        }
        }  
	    
	    
	    public static String getcurpath(){
			File directory = new File("");
			return directory.getAbsolutePath();
		}
}

