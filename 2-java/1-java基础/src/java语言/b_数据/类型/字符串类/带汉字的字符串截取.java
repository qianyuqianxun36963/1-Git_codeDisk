package java����.b_����.����.�ַ�����;

//�ؼ��㣺
//string.getBytes();
//bytes[i]<0;

public class �����ֵ��ַ�����ȡ {
	public static void main(String args[]){
		String str = "a��b��";
		int num = trimGBK(str.getBytes(),2);     //String.getBytes() ,�����ֽڽ��в�������ȡ�ֽ����顣
		System.out.println(str.substring(0,num));//String.substring(),�����ַ����в�������ȡ�ַ��Ӵ���
	}
	
	public static int trimGBK(byte[] bytes,int n){
		int num = 0;
		boolean isChinese = false;
		for(int i = 0;i < n;i++){
			if(bytes[i]<0&&!isChinese){ //����Ҫע�⣬���ֵĻ���ͷһ���ֽ�ȡֵ�Ǹ�ֵ��
				isChinese = true;
			}else{
				num ++;
				isChinese = false;
			}
		}
		return num;
	}
}
