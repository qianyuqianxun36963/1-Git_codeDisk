package freemark.fileModel.ExportHtmlWithXml;

import java.util.HashMap;
import java.util.Map;

import freemarker.template.ObjectWrapper;
import freemarker.template.SimpleSequence;

public class Datas{
	private String datasource; //������datas ������Դ�������ļ������������������ļ�·����ע�����ﲻ��д�����·����
	private PropertiesUtils propeutils;
	
	Datas(String datasource){
		this.datasource = datasource;
		this.propeutils = new PropertiesUtils(datasource);
	}
	
	//�������õ���������
	public static void main(String args[]){
		
		Datas datas = new Datas("userFieldConf.properties");
		@SuppressWarnings("rawtypes")
		Map data = datas.getData();
		System.out.println(data.get("FieldList"));
	}
	
	@SuppressWarnings({ "unchecked", "deprecation", "rawtypes", "static-access" })
	public Map getData(){
    	//����������ݵ�Map 
        Map map = new HashMap(); 
        
        //javaBean������ɵ�list����
        SimpleSequence FieldList=new SimpleSequence(ObjectWrapper.BEANS_WRAPPER);  
        map.put("FieldList", FieldList);  
        
        //�����Ǹ��������ļ��������ݡ�
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




