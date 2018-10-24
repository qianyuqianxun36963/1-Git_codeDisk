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
	
	private String TemplatePath;            //模版地址
	private String OutFilePath;             //输出文件地址
	
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

	//API 地址: http://freemarker.incubator.apache.org/docs/api/freemarker/template/Configuration.html
	private static Configuration cfg;            //模版配置对象
	
    @SuppressWarnings({ "rawtypes", "deprecation" })
	public void export(Map datamap) throws Exception { 
    		String TemplateDir=getfileDir(TemplatePath);
    		String TemplateName=getfilename(TemplatePath);
    		mikdir(OutFilePath);//如果输出 文件夹不存在，就创建它。
    		
	    	//初始化FreeMarker配置 
	        //创建一个Configuration实例 
	        cfg = new Configuration(); 
	        //设置模本装置方法和路径,FreeMarker支持多种模板装载方法。可以重servlet，classpath，数据库装载，   
	        //例如我们的模板是放在com.havenliu.document.template包下面   
	        //configuration.setClassForTemplateLoading(this.getClass(), "/com/havenliu/document/template"); 
	        //设置FreeMarker的模版文件夹位置
	        cfg.setDirectoryForTemplateLoading(new File(TemplateDir)); 
	        cfg.setDefaultEncoding("UTF-8");//重要！！设置模板的编码 格式，不然会乱码。
            //创建模版对象 
            Template t = cfg.getTemplate(TemplateName); 
            //t.setEncoding("UTF-8"); 
            //在模版上执行插值操作，并输出到制定的输出流中 
            t.process(datamap, new OutputStreamWriter(System.out)); 
            //再输出到指定文件中
            File outFile = new File(OutFilePath);
			Writer out = null;  
			FileOutputStream fos=null;  
            try {   
            	fos = new FileOutputStream(outFile); 
            	OutputStreamWriter oWriter = new OutputStreamWriter(fos,"UTF-8"); //这个地方对流的编码不可或缺，使用main（）单独调用时，应该可以，但是如果是web请求导出时导出后word文档就会打不开，并且包XML文件错误。主要是编码格式不正确，无法解析。
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


