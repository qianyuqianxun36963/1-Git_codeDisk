package java����.b_����.����.ʵ������;

//javaBean 
public class Mydata{
	private int date;
  private String str;
	
	public Mydata(int d,String s) {
		date=d;
		str=s;
	}

	@Override
	public String toString() {
		return "Mydate [date=" + date + ", str=" + str + "]";
	}
	
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	
}