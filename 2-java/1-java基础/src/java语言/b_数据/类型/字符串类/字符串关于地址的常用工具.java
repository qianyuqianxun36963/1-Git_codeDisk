package java����.b_����.����.�ַ�����;

import java.io.File;

public class �ַ������ڵ�ַ�ĳ��ù��� {
	public static void main(String[] args) throws Exception { 
		String badpath="E:/1-java\\webApps/web��Ŀ���/1-ģ������/freemark\\src\\freemark\\fileModel\\ExportFile\\outFile.doc";
    	String filepath="E:\\1-java\\webApps\\web��Ŀ���\\1-ģ������\\freemark\\src\\freemark\\fileModel\\ExportFile\\outFile.doc";
    	System.out.println(getfileDir(badpath));
    	System.out.println(getfileDir(filepath));
    	System.out.println(getfilename(badpath));
    	System.out.println(getfilename(filepath));
    	mikdir(filepath);
    } 
	
	
	public static String getfileDir(String filePath){
		filePath=filePath.replaceAll("\\\\","/");
		return filePath.substring(0, filePath.lastIndexOf("/"));
	}
	
	public static String getfilename(String filePath){
		String temp[] = filePath.replaceAll("\\\\","/").split("/");
		String fileName = "";
		if(temp.length > 1){
		fileName = temp[temp.length - 1];
		}
		return fileName;
	};
	
	//�����������ʱ���ļ��п��ܲ����ڣ���ʱ����Ҫ�����ļ��С�
	private static void mikdir(String filePath){
		try{
			filePath = filePath.replaceAll("\\\\","/");
			String folderPath = filePath.substring(0,filePath.lastIndexOf("/"));
			File file = new File(folderPath);
			if(!file.isDirectory()){
				file.mkdirs();
			}
		}catch(Exception e){
		}
	}
	
}

/*���磺��ȡ�����ļ�·��ΪC:\Documents and Settings\Leeo\My Documents\logo.gif

������Ҫȡ��ͼƬ������logo.gif������֪����б�ܡ�\����ת���ַ������Բ���ֱ��

String temp[] = filePath.split("\");//filePath��ֵ����������ļ�·��

���ָ��ļ�·������Ӧ������д


*java��\\��ʾһ��\����regex��\\Ҳ��ʾ\��
*���Ե�\\\\������regex��ʱ��Ϊ\\
*
String temp[] = filePath.split("\\\\");

��Linuxϵͳ��

System.getProperty("file.separator", "\\")

���Ϊ��/��������Windowsϵͳ�����Ϊ��\��������Ҫ�������߿�����ôд

String temp[] = filePath.replaceAll("\\\\","/").split("/");

��ȡ�ļ����Ƶ������������£�

String temp[] = filePath.replaceAll("\\\\","/").split("/");
String fileName = ""
if(temp.length > 1){
fileName = temp[temp.length - 1];
}*/