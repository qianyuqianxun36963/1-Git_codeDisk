package freemark.fileModel.ExportHtmlWithXml;

import freemarker.template.Configuration; 
import freemarker.template.Template; 

import java.io.BufferedWriter;
import java.io.File; 
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter; 
import java.io.Writer;
import java.util.Map; 

public class ExportHtml {
	
	private static File directory = new File("");
	private static String curPath=directory.getAbsolutePath(); 
	
	public static void main(String[] args) throws Exception { 
//    	ExportHtml FM = new ExportHtml(); 
//    	FM.setSourcePath("userFieldConf.properties");
//    	FM.setOutFilePath(curPath+"\\src\\freemark\\fileModel\\ExportHtmlWithXml\\userjspfile.jsp");
//    	FM.setTemplatePath(curPath+"\\src\\freemark\\fileModel\\ExportHtmlWithXml\\usermodel.jsp");
//    	
//    	Datas datas = new Datas(FM.SourcePath);
//    	FM.export(datas.getData()); 
		
		String SourcePath = "userFieldConf.properties";
    	String OutFilePath = curPath+"\\src\\freemark\\fileModel\\ExportHtmlWithXml\\userjspfile.jsp";
    	String TemplatePath = curPath+"\\src\\freemark\\fileModel\\ExportHtmlWithXml\\usermodel.jsp";
    	ExportHtml FM = new ExportHtml(SourcePath,TemplatePath,OutFilePath); 
    	
    	FM.export(FM.datas.getData()); 
    } 
	
	ExportHtml(){}
	
	ExportHtml(String SourcePath,String TemplatePath,String OutFilePath){
		this.SourcePath=SourcePath;
		this.TemplatePath=TemplatePath;
		this.OutFilePath=OutFilePath;
		this.datas = new Datas(SourcePath);
	}
	
	private String SourcePath;              //����ļ���ַ
	private String TemplatePath;            //ģ���ַ
	private String OutFilePath;             //����ļ���ַ
	private Datas datas;					//����Դ
	
	

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
			if(!file.isDirectory()){ //����ļ��в����ڡ�
				file.mkdirs();
			}
		}catch(Exception e){
		}
	}
	
	
	public String getSourcePath() {
		return SourcePath;
	}

	public void setSourcePath(String sourcePath) {
		SourcePath = sourcePath;
	}
	
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
}


