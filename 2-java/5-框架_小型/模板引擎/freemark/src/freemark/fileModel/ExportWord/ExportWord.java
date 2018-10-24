package freemark.fileModel.ExportWord;

import freemarker.template.Configuration; 
import freemarker.template.ObjectWrapper;
import freemarker.template.SimpleSequence;
import freemarker.template.Template; 

import java.io.BufferedWriter;
import java.io.File; 
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter; 
import java.io.Writer;
import java.util.HashMap;
import java.util.Map; 

public class ExportWord {
	
	public static void main(String[] args) throws Exception { 
		
//    	ExportWord FM = new ExportWord(); 
//    	FM.init(); 
//    	FM.process(); 
    } 
	
	//API ��ַ: http://freemarker.incubator.apache.org/docs/api/freemarker/template/Configuration.html
	private Configuration cfg;            //ģ�����ö���
	
	private File directory = new File("");
	private String curPath=directory.getAbsolutePath(); 
	
	
    @SuppressWarnings("deprecation")
	public void init() throws Exception { 
            //��ʼ��FreeMarker���� 
            //����һ��Configurationʵ�� 
            cfg = new Configuration(); 
            //����ģ��װ�÷�����·��,FreeMarker֧�ֶ���ģ��װ�ط�����������servlet��classpath�����ݿ�װ�أ�   
            //�������ǵ�ģ���Ƿ���com.havenliu.document.template������   
            //configuration.setClassForTemplateLoading(this.getClass(), "/com/havenliu/document/template"); 
            //����FreeMarker��ģ���ļ���λ��
            cfg.setDirectoryForTemplateLoading(new File(curPath+"\\src\\freemark\\fileModel\\Exportword")); 
            cfg.setDefaultEncoding("UTF-8");//��Ҫ��������ģ��ı��� ��ʽ����Ȼ�����롣
    } 

    @SuppressWarnings({ "rawtypes" })
	public void process() throws Exception { 
            //����ģ����� 
            //Template t = cfg.getTemplate("test.html"); 
            Template t = cfg.getTemplate("Word.ftl"); //�����ļ���βû��ϵ.word.ftl ��  word.html������ȫһ��,ֻ�Ǻ�׺����һ����
            //Template t = cfg.getTemplate("Word.html"); 
            //t.setEncoding("UTF-8"); 
            //��ȡ�������
            Map map=getData();
            //��ģ����ִ�в�ֵ��������������ƶ���������� 
            t.process(map, new OutputStreamWriter(System.out)); 
            //�������ָ���ļ���
            File outFile = new File(curPath+"\\src\\freemark\\fileModel\\Exportword\\outFile.doc");
			Writer out = null;  
			FileOutputStream fos=null;  
            try {   
            	fos = new FileOutputStream(outFile); 
            	OutputStreamWriter oWriter = new OutputStreamWriter(fos,"UTF-8"); //����ط������ı��벻�ɻ�ȱ��ʹ��main������������ʱ��Ӧ�ÿ��ԣ����������web���󵼳�ʱ������word�ĵ��ͻ�򲻿������Ұ�XML�ļ�������Ҫ�Ǳ����ʽ����ȷ���޷�������
                out = new BufferedWriter(oWriter);   
                t.process(map, out); 
            } catch (FileNotFoundException e1) {   
                e1.printStackTrace();   
            }   
    } 

    @SuppressWarnings({ "unchecked", "deprecation", "rawtypes" })
	public static Map getData(){
    	//����������ݵ�Map 
        Map map = new HashMap(); 
        map.put("head", "ģ���ͷ��"); 
        
        Person user1=new Person("ѧ��","��һ","2010","2050","����");
        Person user2=new Person("��ʦ","����","2010","2050","��ѧ");
        
        //javaBean������ɵ�list����
        SimpleSequence userList=new SimpleSequence(ObjectWrapper.BEANS_WRAPPER);  
        map.put("userList", userList);  
        userList.add(user1);  
        userList.add(user2);  

    	return map;
    }
    
}


