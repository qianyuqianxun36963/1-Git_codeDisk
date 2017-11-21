package java语言.f_文档.json格式;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Java处理json {
    /**
     * 构造Json数据
     * 
     * @return
     */
    public static String BuildJsonStr() {
        // JSON格式数据解析对象
        JSONObject jo = new JSONObject();

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

        Employee employee = new Employee();
        employee.setName("wjl");
        employee.setSex("female");
        employee.setAge(24);

        // 将Map转换为JSONArray数据
        JSONArray ja1 = JSONArray.fromObject(map1);
        // 将List转换为JSONArray数据
        JSONArray ja2 = JSONArray.fromObject(list);
        // 将Bean转换为JSONArray数据
        JSONArray ja3 = JSONArray.fromObject(employee);

        System.out.println("JSONArray对象数据格式：");
        System.out.println(ja1.toString());
        System.out.println(ja2.toString());
        System.out.println(ja3.toString());

        // 构造Json数据，包括一个map和一个Employee对象
        jo.put("map", ja1);
        jo.put("employee", ja2);
        System.out.println("\n最终构造的JSON数据格式：");
        System.out.println(jo.toString());

        return jo.toString();

    }

    /**
     * 解析Json数据
     * 
     * @param jsonString Json数据字符串
     */
    public static void ParseJsonStr(String jsonString) {

        // 以employee为例解析，map类似
        JSONObject jb = JSONObject.fromObject(jsonString);
        JSONArray ja = jb.getJSONArray("employee");

        List<Employee> empList = new ArrayList<Employee>();

        // 循环添加Employee对象（可能有多个）
        for (int i = 0; i < ja.size(); i++) {
            Employee employee = new Employee();

            employee.setName(ja.getJSONObject(i).getString("name"));
            employee.setSex(ja.getJSONObject(i).getString("sex"));
            employee.setAge(ja.getJSONObject(i).getInt("age"));

            empList.add(employee);
        }

        System.out.println("\n将Json数据转换为Employee对象：");
        for (int i = 0; i < empList.size(); i++) {
            Employee emp = empList.get(i);
            System.out.println("name: " + emp.getName() + " sex: "
                    + emp.getSex() + " age: " + emp.getAge());
        }

    }
    
    public static String BuildArrayStr() {
        /*将一个json格式的数组直接转换成JSONArray*/
        String arrayStr = "['123','123']";
        return arrayStr;
    }
    
    public static void ParseArrayStr(String ArrayString) {
        System.out.println("change arrayStr is : " + ArrayString);
//        直接解析是错误的，因为arrayStr格式并不正确!
//        JSONObject jb = JSONObject.fromObject(ArrayString);
//        JSONArray ja = jb.getJSONArray("123");
        
        Map map = new HashMap();
        map.put("arrayStr", ArrayString);
        String arrayStr2jsonStr = map.toString();
        JSONObject jb = JSONObject.fromObject(arrayStr2jsonStr);
        
        JSONArray ja = jb.getJSONArray("arrayStr");
        
        for(int i=0;i<ja.size();i++){
            System.out.println("ArrayStr's "+ i +" element: " + ja.get(i));
        }
    }
    
    
    public static void testArrayListMaptoJsonString(){
        ArrayList<Map<Object, Object>> res = new ArrayList<Map<Object, Object>>();
        Map<Object, Object> resmap = new HashMap<Object, Object>();resmap.put("id","id");
        res.add(resmap);
        JSONArray json = JSONArray.fromObject(res);
        System.out.println(json.toString());
    }
    
    /**
     * @param args
     */
    public static void main(String[] args) {
//        testArrayListMaptoJsonString();
//        ParseJsonStr(BuildJsonStr());
        ParseArrayStr(BuildArrayStr());
    }
}
