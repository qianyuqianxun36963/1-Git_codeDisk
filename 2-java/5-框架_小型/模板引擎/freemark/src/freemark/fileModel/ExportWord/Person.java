package freemark.fileModel.ExportWord;

public class Person {
	private String title;  
  	private String name;
  	private String begintime;
  	private String finishtime;
  	private String extend;
  	
  	public Person(){  
  	}  
  	public Person(String name,String title, String begintime, String finishtime, String extend){  
      	this.title = title;  
      	this.name = name;  
      	this.begintime = begintime; 
      	this.finishtime = finishtime; 
      	this.extend = extend; 
  	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBegintime() {
		return begintime;
	}
	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}
	public String getFinishtime() {
		return finishtime;
	}
	public void setFinishtime(String finishtime) {
		this.finishtime = finishtime;
	}
	public String getExtend() {
		return extend;
	}
	public void setExtend(String extend) {
		this.extend = extend;
	}  
}
