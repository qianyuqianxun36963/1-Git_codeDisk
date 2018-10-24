package freemark.fileModel.ExportFile;

import java.util.HashMap;
import java.util.Map;
import freemarker.template.ObjectWrapper;
import freemarker.template.SimpleSequence;

public class Datas implements I_Datas {
	@SuppressWarnings({ "unchecked", "deprecation", "rawtypes" })
	public Map getData(){
    	//构造填充数据的Map 
        Map map = new HashMap(); 
        map.put("head", "模板的头部"); 
        
        Person user1=new Person("学生","王亚俊","2010","2050","语文");
        Person user2=new Person("教师","王二","2010","2050","数学");
        
        //javaBean对象组成的list对象。
        SimpleSequence userList=new SimpleSequence(ObjectWrapper.BEANS_WRAPPER);  
        map.put("userList", userList);  
        userList.add(user1);  
        userList.add(user2);  

    	return map;
    }
}




