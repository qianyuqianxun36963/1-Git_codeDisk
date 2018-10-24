package freemark.fileModel.ExportFile;

import freemarker.template.Configuration; 
import freemarker.template.Template; 

import java.io.BufferedWriter;
import java.io.File; 
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter; 
import java.io.Writer;
import java.util.Map; 

public class ExportFile {
	
	public static void main(String[] args) throws Exception { 
    	ExportFile FM = new ExportFile(); 
    	FM.setOutFilePath(getcurpath()+"\\src\\freemark\\fileModel\\ExportFile\\outFile.doc");
    	FM.setTemplatePath(getcurpath()+"\\src\\freemark\\fileModel\\ExportFile\\Word.ftl");
    	Datas datas=new Datas();
    	FM.export(datas.getData()); 
    } 
	
	ExportFile(){}
	
	ExportFile(String TemplatePath,String OutFilePath){
		this.TemplatePath=TemplatePath;
		this.OutFilePath=OutFilePath;
	}
	
	private String TemplatePath;            //ģ���ַ
	private String OutFilePath;             //����ļ���ַ
	
	public String getTemplatePath() {
		return TemplatePath;
	}

	public void setTemplatePath(String templatePath) {
		TemplatePath = templatePath;
	}

	public String getOutFilePath() {
		return OutFilePath;
	}

	public void setOutFilePath(String outFilePath) {
		OutFilePath = outFilePath;
	}

	//API ��ַ: http://freemarker.incubator.apache.org/docs/api/freemarker/template/Configuration.html
	private static Configuration cfg;            //ģ�����ö���
	
    @SuppressWarnings({ "rawtypes", "deprecation" })
	public void export(Map datamap) throws Exception { 
    		String TemplateDir=getfileDir(TemplatePath);
    		String TemplateName=getfilename(TemplatePath);
    		mikdir(OutFilePath);//������ �ļ��в����ڣ��ʹ�������
    		
	    	//��ʼ��FreeMarker���� 
	        //����һ��Configurationʵ�� 
	        cfg = new Configuration(); 
	        //����ģ��װ�÷�����·��,FreeMarker֧�ֶ���ģ��װ�ط�����������servlet��classpath�����ݿ�װ�أ�   
	        //�������ǵ�ģ���Ƿ���com.havenliu.document.template������   
	        //configuration.setClassForTemplateLoading(this.getClass(), "/com/havenliu/document/template"); 
	        //����FreeMarker��ģ���ļ���λ��
	        cfg.setDirectoryForTemplateLoading(new File(TemplateDir)); 
	        cfg.setDefaultEncoding("UTF-8");//��Ҫ��������ģ��ı��� ��ʽ����Ȼ�����롣
            //����ģ����� 
            Template t = cfg.getTemplate(TemplateName); 
            //t.setEncoding("UTF-8"); 
            //��ģ����ִ�в�ֵ��������������ƶ���������� 
            t.process(datamap, new OutputStreamWriter(System.out)); 
            //�������ָ���ļ���
            File outFile = new File(OutFilePath);
			Writer out = null;  
			FileOutputStream fos=null;  
            try {   
            	fos = new FileOutputStream(outFile); 
            	OutputStreamWriter oWriter = new OutputStreamWriter(fos,"UTF-8"); //����ط������ı��벻�ɻ�ȱ��ʹ��main������������ʱ��Ӧ�ÿ��ԣ����������web���󵼳�ʱ������word�ĵ��ͻ�򲻿������Ұ�XML�ļ�������Ҫ�Ǳ����ʽ����ȷ���޷�������
                out = new BufferedWriter(oWriter);   
                t.process(datamap, out); 
            } catch (FileNotFoundException e1) {   
                e1.printStackTrace();   
            }   
    } 

    public static String getcurpath(){
		File directory = new File("");
		return directory.getAbsolutePath();
	}
    
    public String getfileDir(String filePath){
		filePath=filePath.replaceAll("\\\\","/");
		return filePath.substring(0, filePath.lastIndexOf("/"));
	}
	
	public String getfilename(String filePath){
		String temp[] = filePath.replaceAll("\\\\","/").split("/");
		String fileName = "";
		if(temp.length > 1){
		fileName = temp[temp.length - 1];
		}
		return fileName;
	};
    
	private void mikdir(String filePath){
		try{
			filePath = filePath.replace("\\", "/");
			String folderPath = filePath.substring(0,filePath.lastIndexOf("/"));
			File file = new File(folderPath);
			if(!file.isDirectory()){
				file.mkdirs();
			}
		}catch(Exception e){
		}
	}
	
}


