package java语言.b_数据.容器.实用容器.基础;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;

//定义一个List<Map<String,Object>>，其中多层嵌套。结构稍复杂的处理。

public class ListMap复杂组合与Json对象 {
    List<Map<String,Object>> listMap = new ArrayList<Map<String,Object>>();
    
    @Test
    public void testListMap(){
        List<Map> listMap = BuildListMap();
        for(Map map : listMap){
            if(map.get("name").equals("student")){
                List<Map> students = (List<Map>) map.get("list");
                for(Map student : students){
                    System.out.println(student.get("name"));
                    System.out.println(student.get("sex"));
                    System.out.println(student.get("age"));
                }
            }
        }
    }
    
    public static List BuildListMap(){
     // 下面构造两个map、一个list和一个Employee对象
        Map<String, String> map1 = new HashMap<String, String>();
        map1.put("name", "Alexia");
        map1.put("sex", "female");
        map1.put("age", "23");
    
        Map<String, String> map2 = new HashMap<String, String>();
        map2.put("name", "Edward");
        map2.put("sex", "male");
        map2.put("age", "24");
    
        List<Map> list = new ArrayList<Map>();
        list.add(map1);
        list.add(map2);
        
        Map<String, Object> mapStu = new HashMap<String, Object>();
        mapStu.put("list", list);
        mapStu.put("name", "student");
        
        Map<String, Object> mapClass = new HashMap<String, Object>();
        mapClass.put("name", "class");
        
        List listMap = new ArrayList<Map>();
        listMap.add(mapStu);
        listMap.add(mapClass);
        
        return listMap;
    }
}
