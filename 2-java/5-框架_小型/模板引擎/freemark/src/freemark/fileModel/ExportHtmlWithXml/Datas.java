package freemark.fileModel.ExportHtmlWithXml;

import java.util.HashMap;
import java.util.Map;

import freemarker.template.ObjectWrapper;
import freemarker.template.SimpleSequence;

public class Datas{
	private String datasource; //本例中datas 数据来源于配置文件，在这里设置配置文件路径，注意这里不能写如绝对路径。
	private PropertiesUtils propeutils;
	
	Datas(String datasource){
		this.datasource = datasource;
		this.propeutils = new PropertiesUtils(datasource);
	}
	
	//做测试用的主方法。
	public static void main(String args[]){
		
		Datas datas = new Datas("userFieldConf.properties");
		@SuppressWarnings("rawtypes")
		Map data = datas.getData();
		System.out.println(data.get("FieldList"));
	}
	
	@SuppressWarnings({ "unchecked", "deprecation", "rawtypes", "static-access" })
	public Map getData(){
    	//构造填充数据的Map 
        Map map = new HashMap(); 
        
        //javaBean对象组成的list对象。
        SimpleSequence FieldList=new SimpleSequence(ObjectWrapper.BEANS_WRAPPER);  
        map.put("FieldList", FieldList);  
        
        //下面是根据配置文件加载数据。
        String lengthstr = propeutils.getFileConfigValue("fieldlength");  
        int length = Integer.parseInt(lengthstr);
        String visible,fieldname,num;
        for(int i=1;i<=length;i++){
        	if(propeutils.getFileConfigValue("visible"+i)!=null){
	        	visible = propeutils.getFileConfigValue("visible"+i);
	        	fieldname = propeutils.getFileConfigValue("fieldname"+i);
	        	num = String.valueOf(i);
	        	FieldBean field=new FieldBean(visible,fieldname,num);
	        	FieldList.add(field); 
        	}
        }

    	return map;
    }
	
	public String getDatasource() {
		return datasource;
	}

	public void setDatasource(String datasource) {
		this.datasource = datasource;
		this.propeutils = new PropertiesUtils(datasource);
	}

	public PropertiesUtils getPropeutils() {
		return propeutils;
	}

	public void setPropeutils(PropertiesUtils propeutils) {
		this.propeutils = propeutils;
	}
}




