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
	
	//API 地址: http://freemarker.incubator.apache.org/docs/api/freemarker/template/Configuration.html
	private Configuration cfg;            //模版配置对象
	
	private File directory = new File("");
	private String curPath=directory.getAbsolutePath(); 
	
	
    @SuppressWarnings("deprecation")
	public void init() throws Exception { 
            //初始化FreeMarker配置 
            //创建一个Configuration实例 
            cfg = new Configuration(); 
            //设置模本装置方法和路径,FreeMarker支持多种模板装载方法。可以重servlet，classpath，数据库装载，   
            //例如我们的模板是放在com.havenliu.document.template包下面   
            //configuration.setClassForTemplateLoading(this.getClass(), "/com/havenliu/document/template"); 
            //设置FreeMarker的模版文件夹位置
            cfg.setDirectoryForTemplateLoading(new File(curPath+"\\src\\freemark\\fileModel\\Exportword")); 
            cfg.setDefaultEncoding("UTF-8");//重要！！设置模板的编码 格式，不然会乱码。
    } 

    @SuppressWarnings({ "rawtypes" })
	public void process() throws Exception { 
            //创建模版对象 
            //Template t = cfg.getTemplate("test.html"); 
            Template t = cfg.getTemplate("Word.ftl"); //这里文件结尾没关系.word.ftl 和  word.html内容完全一样,只是后缀名不一样。
            //Template t = cfg.getTemplate("Word.html"); 
            //t.setEncoding("UTF-8"); 
            //获取填充数据
            Map map=getData();
            //在模版上执行插值操作，并输出到制定的输出流中 
            t.process(map, new OutputStreamWriter(System.out)); 
            //再输出到指定文件中
            File outFile = new File(curPath+"\\src\\freemark\\fileModel\\Exportword\\outFile.doc");
			Writer out = null;  
			FileOutputStream fos=null;  
            try {   
            	fos = new FileOutputStream(outFile); 
            	OutputStreamWriter oWriter = new OutputStreamWriter(fos,"UTF-8"); //这个地方对流的编码不可或缺，使用main（）单独调用时，应该可以，但是如果是web请求导出时导出后word文档就会打不开，并且包XML文件错误。主要是编码格式不正确，无法解析。
                out = new BufferedWriter(oWriter);   
                t.process(map, out); 
            } catch (FileNotFoundException e1) {   
                e1.printStackTrace();   
            }   
    } 

    @SuppressWarnings({ "unchecked", "deprecation", "rawtypes" })
	public static Map getData(){
    	//构造填充数据的Map 
        Map map = new HashMap(); 
        map.put("head", "模板的头部"); 
        
        Person user1=new Person("学生","王一","2010","2050","语文");
        Person user2=new Person("教师","王二","2010","2050","数学");
        
        //javaBean对象组成的list对象。
        SimpleSequence userList=new SimpleSequence(ObjectWrapper.BEANS_WRAPPER);  
        map.put("userList", userList);  
        userList.add(user1);  
        userList.add(user2);  

    	return map;
    }
    
}


