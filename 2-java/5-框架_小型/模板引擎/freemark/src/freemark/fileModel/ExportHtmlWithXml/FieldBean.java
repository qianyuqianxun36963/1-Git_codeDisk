package freemark.fileModel.ExportHtmlWithXml;

public class FieldBean {
	private String visible;  
  	private String fieldname;
  	private String num;
	
  	FieldBean(String visible,String fieldname,String num){
  		this.visible = visible;
  		this.fieldname = fieldname;
  		this.num = num;
  	}
  	
  	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getVisible() {
		return visible;
	}
	public void setVisible(String visible) {
		this.visible = visible;
	}
	public String getFieldname() {
		return fieldname;
	}
	public void setFieldname(String fieldname) {
		this.fieldname = fieldname;
	}

}
