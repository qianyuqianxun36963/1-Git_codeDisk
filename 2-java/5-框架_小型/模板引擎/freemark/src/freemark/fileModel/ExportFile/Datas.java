package freemark.fileModel.ExportFile;

import java.util.HashMap;
import java.util.Map;
import freemarker.template.ObjectWrapper;
import freemarker.template.SimpleSequence;

public class Datas implements I_Datas {
	@SuppressWarnings({ "unchecked", "deprecation", "rawtypes" })
	public Map getData(){
    	//����������ݵ�Map 
        Map map = new HashMap(); 
        map.put("head", "ģ���ͷ��"); 
        
        Person user1=new Person("ѧ��","���ǿ�","2010","2050","����");
        Person user2=new Person("��ʦ","����","2010","2050","��ѧ");
        
        //javaBean������ɵ�list����
        SimpleSequence userList=new SimpleSequence(ObjectWrapper.BEANS_WRAPPER);  
        map.put("userList", userList);  
        userList.add(user1);  
        userList.add(user2);  

    	return map;
    }
}




