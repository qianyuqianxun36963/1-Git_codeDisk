package java����.c_����.���л�;

import java.io.*;
import java.util.HashMap;
import java.util.Map;

public class ���л� {
	public static void main(String[] args)  
	 {  
      String curpath  = new File("").getAbsolutePath();
	  String filepath = curpath+"/src/java����/c_����/���л�";
		
	  Map<String, String> map = new HashMap<String, String>();
	  SerializableObject st = new SerializableObject(123,"123",map);  
	  File file = new File(filepath+"/SerializableObject.txt");  
	  try  
	  {  
	   file.createNewFile();  
	  }  
	  catch(IOException e)  
	  {  
	   e.printStackTrace();  
	  }  
	  try  
	  {  
	   //Student�������л�����  
	   FileOutputStream fos = new FileOutputStream(file);  
	   ObjectOutputStream oos = new ObjectOutputStream(fos);  
	   oos.writeObject(st);  
	   oos.flush();  
	   oos.close();  
	   fos.close();  
	  
	   //Student�������л�����  
	   FileInputStream fis = new FileInputStream(file);  
	   ObjectInputStream ois = new ObjectInputStream(fis);  
	   SerializableObject st1 = (SerializableObject) ois.readObject();  
	   System.out.println("num = " + st1.getNum());  
	   System.out.println("name = " + st1.getName());  
	   System.out.println("map = " + st1.getMap());  
	   ois.close();  
	   fis.close();  
	  }  
	  catch(ClassNotFoundException e)  
	  {  
	   e.printStackTrace();  
	  }  
	  catch (IOException e)  
	  {  
	   e.printStackTrace();  
	  }               
	 }  
}


class SerializableObject implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	int num;
	String name;
	Map<?, ?> map = new HashMap<String, String>();
	
	SerializableObject(int num, String name, Map<?, ?> map ){
		this.num  = num;
		this.name = name;
		this.map  = map;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Map<?, ?> getMap() {
		return map;
	}

	public void setMap(Map<?, ?> map) {
		this.map = map;
	}
}