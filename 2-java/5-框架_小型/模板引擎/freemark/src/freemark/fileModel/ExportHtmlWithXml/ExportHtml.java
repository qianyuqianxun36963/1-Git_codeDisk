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
	
	private String SourcePath;              //输出文件地址
	private String TemplatePath;            //模版地址
	private String OutFilePath;             //输出文件地址
	private Datas datas;					//数据源
	
	

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
			if(!file.isDirectory()){ //如果文件夹不存在。
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


