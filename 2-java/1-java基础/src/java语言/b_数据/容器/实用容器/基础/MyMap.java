package java����.b_����.����.ʵ������.����;

import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.junit.Test;

public class MyMap {
	
	public static void main(String args[]) {
				
		MyMap_HashMap.unique();
		MyMap_HashMap.complexkey();
		MyMap_EnumMap.testEnumMap();
		MapUtil.testTraverse();
	}

}

//EnumMap
class MyMap_EnumMap{
	enum Season {  SPRING, SUMMER, FALL, WINNTER }  
	
	//ע������Ķ��巽ʽ�����캯����Ҫö�����͵�������Ϊ������
	//���⣬��java�У�û��new�Ļ�������ʵ����û����ռ�ģ�����ֱ���ã���C++��ͬ��
	static EnumMap<Season, String> enumMap = new EnumMap<Season, String>(Season.class);//�������Ҫָ�����ͣ���EnumMap<?,?>������ʽ�������put�ǲ��еġ�
	
	public static void testEnumMap(){
		//enumMap.put(123, 123); //����д���Ǵ���ģ�key������enum���͡�
		enumMap.put(Season.SPRING,"spring");
		
		System.out.println(enumMap.get(Season.SPRING));
	}
}


//HashMapʵ������һ��������ɢ�С������ݽṹ�������������Ľ���塣
//���ݽṹ�д���hash��ͻ��һ�ַ������ǡ�����ַ����
//table���飺[...]-[...]-[...]-[...]-[...]-[...]-[...]-[...]
//             |           |
//����                   [...]       [...]
//             |           
//           [...]   

//��������HashMap��putԪ�ص�ʱ���ȸ���key��hashCode���¼���hashֵ������hashֵ�õ����Ԫ���������е�λ�ã����±꣩��
//��������λ�����Ѿ����������Ԫ���ˣ���ô�����λ���ϵ�Ԫ�ؽ����������ʽ��ţ��¼���ķ�����ͷ�����ȼ���ķ�����β��
//��������λ����û��Ԫ�أ���ֱ�ӽ���Ԫ�طŵ��������еĸ�λ���ϡ�

class MyMap_HashMap{
	//����Ψһ�ġ�
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public static void unique(){
			   //����map���в�ͬ��key
			   HashMap map1 = new HashMap(); 
			   map1.put("1", "A"); 
			   HashMap map2 = new HashMap(); 
			   map2.put("2", "B"); 
			   map2.put("3", "C"); 
			   map1.putAll(map2); 
			   System.out.println(map1);
			   //����map�����ظ���key
			   HashMap map3 = new HashMap(); 
			   map3.put("1", "A"); 
			   HashMap map4 = new HashMap(); 
			   map4.put("1", "B"); 
			   map4.put("3", "C"); 
			   map3.putAll(map4); 
			   System.out.println(map3);
		}
		
		//��ֵ���У��������Ǹ���������
		@SuppressWarnings({ "rawtypes", "unchecked" })
		public static void complexkey(){
			Point p1 = new Point(0,0);
			HashMap map1=new HashMap(); 
			map1.put(p1, "A"); 
			Point p2 = new Point(0,0);
			map1.put(p2, "ABC"); 
			System.out.println(map1.get(p1));
			System.out.println(map1.get(p2));
		}
}


//ʹ�õ���ɢ�б��ʵ�ַ�ʽ��
class MyMap_HashTable{
	
}

//�̰߳�ȫ��map
class MyMap_ConcurrentHashMap{
	
	
}

/*
HashMap��Hashtable��ʵ����Map�ӿڣ�����������һ��֮ǰ��ҪŪ�������֮��ķֱ���Ҫ�������У��̰߳�ȫ�ԣ�ͬ��(synchronization)���Լ��ٶȡ�

	1.HashMap�������Եȼ���Hashtable������HashMap�Ƿ�synchronized�ģ������Խ���null(HashMap���Խ���Ϊnull�ļ�ֵ(key)��ֵ(value)����Hashtable����)��

	2.HashMap�Ƿ�synchronized����Hashtable��synchronized������ζ��Hashtable���̰߳�ȫ�ģ�����߳̿��Թ���һ��Hashtable�������û����ȷ��ͬ���Ļ�������߳��ǲ��ܹ���HashMap�ġ�Java 5�ṩ��ConcurrentHashMap������HashTable���������HashTable����չ�Ը��á�

	3.��һ��������HashMap�ĵ�����(Iterator)��fail-fast����������Hashtable��enumerator����������fail-fast�ġ����Ե��������̸߳ı���HashMap�Ľṹ�����ӻ����Ƴ�Ԫ�أ��������׳�ConcurrentModificationException���������������remove()�����Ƴ�Ԫ���򲻻��׳�ConcurrentModificationException�쳣�����Ⲣ����һ��һ����������Ϊ��Ҫ��JVM������ͬ��Ҳ��Enumeration��Iterator������

	4.����Hashtable���̰߳�ȫ��Ҳ��synchronized�������ڵ��̻߳���������HashMapҪ��������㲻��Ҫͬ����ֻ��Ҫ��һ�̣߳���ôʹ��HashMap����Ҫ�ù�Hashtable��

	5.HashMap���ܱ�֤����ʱ�������Map�е�Ԫ�ش����ǲ���ġ�
	
HashMap����ͨ�������������ͬ����
Map m = Collections.synchronizeMap(hashMap);
 * */

//ʹ�õ��Ǻ������ʵ�ַ�ʽ��
class MyMap_TreeMap{
	
}


class MyMap_Properties{

}

class MapUtil{
	public static void testTraverse(){
		Map<String, String> map = new HashMap<String, String>();
		map.put("A","wang");
		map.put("B","zhang");
		visitMap_EntrySet(map);
		visitMap_KeySet(map);
		visitMap_Values(map);
		visitMap_iterator(map);
	}
	
	/*����һ��map�������ַ����Ǵ���ġ�
	public static void visitMap_forNum(Map<?,?> map){
		for(int i = 0 ; i < map.size() ; i++){ 
	        System.out.println(map.get(i).toString());
	    }  
	}*/
	
	//����һ��map���󡣵���������ʱ�����ַ�����Ч�ʸ��ߡ�
	public static void visitMap_EntrySet(Map<?,?> map){
		for(Map.Entry<?, ?> entry:map.entrySet()){  
	        System.out.println(entry.getKey()+": "+entry.getValue());
	    }  
	}
	
	//����һ��map����
	public static void visitMap_KeySet(Map<?,?> map){
		for(Object key: map.keySet()){  
	        System.out.println(key.toString()+": "+map.get(key));
	    }  
	}
	
	//����һ��map����
	public static void visitMap_Values(Map<?,?> map){
		for(Object value: map.values()){
			System.out.println("Value = " + value); 
		}
	}
	
	//����һ��map����iterator��
	public static void visitMap_iterator(Map<?,?> map){
		Iterator<?> entries = map.entrySet().iterator();  
		while (entries.hasNext()) {  
		    Map.Entry<?, ?> entry = (Entry<?, ?>) entries.next();  
		    System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());  
		}  
	}
	
}

class Point{
	int x;
	int y;
	Point(int x,int y){
		this.x=x;
		this.y=y;
	}
}

