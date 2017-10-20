package java����.d_ϵͳ.io����;

import java����.e_�Խ�.������ʽ.������ʽ;

import java.io.*;


public class �ļ��� {
	public static void main(String[] args) throws IOException {
		  String curpath = FileNameAndPath.getcurpath();
		  System.out.println("current file path:" + curpath);
//		  File dir=new File(FileNameAndPath.getcurpath());
		  
//		      ע������Ҫ�ӡ�scr����
		  String filepath = curpath+"/src/java����/c_ϵͳ/io����/files";
		  ChangeFileUtil.changeName("2.txt", "1.txt", filepath);
		  
//		  MakeFileUtil.mkdir_withdir("C:/java/files");
//		  MakeFileUtil.mkdir_withoutdir("C:/java/files");
//		  MakeFileUtil.mkfile_withdir("C:/java/files/file.txt");
//		  MakeFileUtil.mkfile_withoutdir("C:/java/files/file.txt");

//		  ChangeFileUtil.changeNames_KeepPart("G:/����/��Ƶ/һȭ����","һȭ����","\\d{2}","rmvb");
//		  ChangeFileUtil.changeNames_RemovePart("E:/java/workspace/java������","\\[([\\s\\S]*)\\]","rmvb");
//        ShowFileUtil.showChildFiles(dir,"file");
//        ShowFileUtil.showChildFiles(dir,"string");
//        ShowFileUtil.showFileInfs(file);
//        ShowFileUtil.showChoisedFiles(dir,"string","java");
//        ExecuteFileUtil.executeFile();
      
//        String filepath="E:/1-java\\\\webApps\\web���繦��/\3-���ܳ���\\excel����\\src\\exportExcel_freemark\\outExcel.xls";
//        System.out.println(FileNameAndPath.getfileDir(filepath));
//        System.out.println(FileNameAndPath.getfilename(filepath));
	}
}

class MakeFileUtil{
	
	
	public static void mkdir_withdir(String filePath){
 		File dir=new File(filePath);
        System.out.println( dir.mkdir());//mkdir ����Ŀ¼�����������һ��Ŀ¼�����ڣ����᷵��false��������Ŀ¼��API:mkdir
	}
	
	public static void mkdir_withoutdir(String filePath){
 		File dir=new File(filePath);
        System.out.println( dir.mkdirs());//mkdirs ��������·����ƾ�մ�����û�и�Ŀ¼��ʱ��ᴴ��������Ҫ��ǰ���Ŀ¼����
	}
	
	public static void mkfile_withdir(String filePath) throws IOException{
		File file=new File(filePath);
		System.out.println( file.createNewFile());
	}
	
	//��ȡһ���ļ���ǰ���Ŀ¼�������Ŀ¼�Ѿ����ڣ��򲻶����������ڣ��򴴽���
	public static void mkfile_withoutdir(String filePath){
		try{
			filePath = filePath.replace("\\", "/");
			String folderPath = filePath.substring(0,filePath.lastIndexOf("/"));
			File folderpath = new File(folderPath);
			if(!folderpath.isDirectory()){
				folderpath.mkdirs();
			}
			File file=new File(filePath);
			file.createNewFile();
		}catch(Exception e){
		}
	}
}

/** 
 * ɾ���ļ���Ŀ¼ 
 *  
 * @author chen 
 *  
 */  
class DeleteFileUtil {  
  
 /** 
  * ɾ���ļ����������ļ����ļ��� 
  *  
  * @param fileName 
  *            Ҫɾ�����ļ��� 
  * @return ɾ���ɹ�����true�����򷵻�false 
  */  
	public static boolean delete(String fileName) {  
	    File file = new File(fileName);  
	    if (!file.exists()) {  
	        System.out.println("ɾ���ļ�ʧ��:" + fileName + "�����ڣ�");  
	        return false;  
	    } else {  
	        if (file.isFile())  
	            return deleteFile(fileName);  
	        else  
	            return deleteDirectory(fileName);  
	    }  
	}  
  
 /** 
  * ɾ�������ļ� 
  *  
  * @param fileName 
  *            Ҫɾ�����ļ����ļ��� 
  * @return �����ļ�ɾ���ɹ�����true�����򷵻�false 
  */  
	public static boolean deleteFile(String fileName) {  
	    File file = new File(fileName);  
	    // ����ļ�·������Ӧ���ļ����ڣ�������һ���ļ�����ֱ��ɾ��  
	        if (file.exists() && file.isFile()) {  
	        if (file.delete()) {  
	            System.out.println("ɾ�������ļ�" + fileName + "�ɹ���");  
	            return true;  
	        } else {  
	            System.out.println("ɾ�������ļ�" + fileName + "ʧ�ܣ�");  
	            return false;  
	        }  
	    } else {  
	        System.out.println("ɾ�������ļ�ʧ�ܣ�" + fileName + "�����ڣ�");  
	        return false;  
	    }  
	} 
  
 /** 
  * ɾ��Ŀ¼��Ŀ¼�µ��ļ� 
  *  
  * @param dir 
  *            Ҫɾ����Ŀ¼���ļ�·�� 
  * @return Ŀ¼ɾ���ɹ�����true�����򷵻�false 
  */  

public static boolean deleteDirectory(String dir) {  
    // ���dir�����ļ��ָ�����β���Զ�����ļ��ָ���  
    if (!dir.endsWith(File.separator))  
        dir = dir + File.separator;  
    File dirFile = new File(dir);  
    // ���dir��Ӧ���ļ������ڣ����߲���һ��Ŀ¼�����˳�  
    if ((!dirFile.exists()) || (!dirFile.isDirectory())) {  
        System.out.println("ɾ��Ŀ¼ʧ�ܣ�" + dir + "�����ڣ�");  
        return false;  
    }  
    boolean flag = true;  
    // ɾ���ļ����е������ļ�������Ŀ¼  
    File[] files = dirFile.listFiles();  
    for (int i = 0; i < files.length; i++) {  
        // ɾ�����ļ�  
        if (files[i].isFile()) {  
            flag = DeleteFileUtil.deleteFile(files[i].getAbsolutePath());  
            if (!flag)  
                break;  
        }  
        // ɾ����Ŀ¼  
        else if (files[i].isDirectory()) {  
            flag = DeleteFileUtil.deleteDirectory(files[i].getAbsolutePath());  
            if (!flag)  
                break;  
        }  
    }  
    if (!flag) {  
        System.out.println("ɾ��Ŀ¼ʧ�ܣ�");  
        return false;  
    }  
    // ɾ����ǰĿ¼  
    if (dirFile.delete()) {  
        System.out.println("ɾ��Ŀ¼" + dir + "�ɹ���");  
        return true;  
    } else {  
        return false;  
    }  
}  
  
 public static void main(String[] args) {  
//  // ɾ�������ļ�  
//  String file = "c:/test/test.txt";  
//  DeleteFileUtil.deleteFile(file);  
//  System.out.println();  
//  //ɾ��һ��Ŀ¼  
//  String dir = "c:/test";  
//  DeleteFileUtil.deleteDirectory(dir);  
//  System.out.println();  
//  // ɾ���ļ�  
//  dir = "c:/test/test0";  
//  DeleteFileUtil.delete(dir);  
  
 }  
  
} 

class  FileNameAndPath{
	
//	ע��:
//		��ִ���ļ�Ϊ����
//		/*�����ļ�·����д�����С�*/
//		
//		/* '/' ��ʾ�ļ�·���Ļ���������� */
//		//re.exec("D:/QvodPlayer/QvodPlayer.exe");
//		//re.exec("D:/QvodPlayer///QvodPlayer.exe");
//		//re.exec("D:/QvodPlayer//////QvodPlayer.exe");
//		//re.exec("D:////QvodPlayer//QvodPlayer.exe");
//		
//		/* '\' ��ʾ�ļ�·���Ļ���ֻҪ��˫��Ҳ������� */
//		re.exec("D:\\\\\\QvodPlayer\\QvodPlayer.exe");
//		//re.exec("D:\\QvodPlayer\\QvodPlayer.exe");
//		//re.exec("D:\\\\QvodPlayer\\\\QvodPlayer.exe");
//		//re.exec("D:\\QvodPlayer/QvodPlayer.exe");
	public static String getcurpath(){
		File directory = new File("");
		String curPath=directory.getAbsolutePath();
		//String curPath=(new File("")).getAbsolutePath();
		//System.out.println(curPath);
		return curPath;
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
    
	
}

class ChangeFileUtil{
	//�����ļ����е�ĳһ���֡�
	//���ļ����µ������ļ������������������ıȽϼ򵥣�ֻ��ƥ���Դ�ļ��µĲ������ƣ�Ȼ��ƴ�������ֺ�
	public static void changeNames_KeepPart(String dir,String newname,String regexStr,String suffix){
		File file=new File(dir);
		File[] files=file.listFiles();
		for (File f : files){
	    	String string=������ʽ.matchString("\\d{2}",f.getName()).group();
	    	//System.out.println(f.getName()+"  comesout  "+string);
	    	File dest=new File(f.getParent()+"/"+newname+"_"+string+"."+suffix);
	    	f.renameTo(dest);
	    }
	}
	
	//ȥ���ļ����е�ĳһ����
	public static void changeNames_RemovePart(String dir,String regexStr,String suffix){
		File file=new File(dir);
		File[] files=file.listFiles();
		for (File f : files){
			String filename=f.getName();
	    	String stringtoremove=������ʽ.matchString(regexStr,filename).group();
	    	String newname=filename.replaceAll(stringtoremove,"");
	    	System.out.println(stringtoremove);
	    	File dest=new File(f.getParent()+"/"+newname+"."+suffix);
	    	f.renameTo(dest);
	    }
	}
	
	//�޸��ļ�����ĳ�ļ����ļ���
	public static boolean changeName(String newname,String oldname,String filepath){
		File oldfile = new File(filepath+"/"+oldname);
		File newfile = new File(filepath+"/"+newname);
		if(!oldfile.exists()){System.out.println("this oldname does't exist."); return false;}
		if(newfile.exists()){System.out.println("this newname has bean used."); return false;}
		else{
			oldfile.renameTo(newfile);
			System.out.println("name change success");
		}
		return false;
	}
	
}

class ExecuteFileUtil{
	//ִ�п�ִ���ļ�
	public static void executeFile(){
		try {
			@SuppressWarnings("unused")
			Runtime re=Runtime.getRuntime();
			//re.exec("javac �ļ���.java");
			
			//File file=new File("C:\\Windows","Notepad.exe");
			//re.exec(file.getAbsolutePath());
			//re.exec("C:\\Windows/Notepad.exe");
			
			//re.exec("D:\\1-�Ѱ����/QQPlayer/QQPlayer.exe"); //ע��·����д��ʽ
			
			/*�����ļ�·����д�����С�*/
			
			/* '/' ��ʾ�ļ�·���Ļ���������� */
			//re.exec("D:/QvodPlayer/QvodPlayer.exe");
			//re.exec("D:/QvodPlayer///QvodPlayer.exe");
			//re.exec("D:/QvodPlayer//////QvodPlayer.exe");
			//re.exec("D:////QvodPlayer//QvodPlayer.exe");
			
			/* '\' ��ʾ�ļ�·���Ļ���ֻҪ��˫��Ҳ������� */
			//re.exec("D:\\\\\\QvodPlayer\\QvodPlayer.exe");
			//re.exec("D:\\QvodPlayer\\QvodPlayer.exe");
			//re.exec("D:\\\\QvodPlayer\\\\QvodPlayer.exe");
			//re.exec("D:\\QvodPlayer/QvodPlayer.exe");
			}
		catch (Exception e) { System.out.println("execute failed");	}		
	}
}

class ShowFileUtil{
	public static void showChildFiles(File dir,String flag){
		System.out.println(dir.getName()+"�µ������ļ���");
		if(flag.equals("string")){
		File[] filesFile=dir.listFiles();
	    for (File f : filesFile){
	    	System.out.println( f.toString());
	    }}
		else{
	    String[] filesString=dir.list();
	    for(String s:filesString){
	    	System.out.println(s);
	    }}
	}
	
	public static void showChoisedFiles(File dir,String flag,String type){
		System.out.println(dir.getName()+"�µ�����\""+type+"\"���͵��ļ���");
		Utils_Filter filter=new Utils_Filter("java");
		
		if(flag.equals("string")){
		File[] filesFile=dir.listFiles(filter);//��ʵ����FilenameFilter�ӿڵĶ����룬��Ϊɸѡ������
	    for (File f : filesFile){
	    	System.out.println( f.toString());
	    }}
		else{
	    String[] filesString=dir.list(filter);
	    for(String s:filesString){
	    	System.out.println(s);
	    }}		
	}
	
	public static void showFileInfs(File file){
		String[] infs=new String[7];
		infs[0]="�ļ����� "+file.getName();
		infs[1]="�ļ�����·���� "+file.getAbsolutePath();
		infs[2]="�ļ���Ŀ¼�� "+file.getParent();

		Boolean canR=file.canRead();	infs[3]="�ļ��ɶ��ԣ�"+canR.toString();
		Boolean canE=file.canExecute();	infs[4]="�ļ���ִ�У�"+canE.toString();
		Boolean isFile=file.isFile();	infs[5]="�Ƿ�Ϊ�ļ���"+isFile.toString();
		Boolean isDir=file.isDirectory();	infs[6]="�Ƿ�ΪĿ¼��"+isDir.toString();
		
		for(String s: infs){
			System.out.println(s);
		}
	}
}


class WriteFileUtil{
	
	public static boolean writeFileWithEncode(String filePath,String content,String encode){
		try {
			Writer write = new BufferedWriter( new OutputStreamWriter(new FileOutputStream(filePath),encode));
			write.write(content);
			write.flush();
			write.close();
			return true;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
}
	
class ReadFileUtil{
	public static String readFileToString(String filename){
        try {
            BufferedReader bis = new BufferedReader(new InputStreamReader(new FileInputStream( new File(filename)), "GBK") );
            String szContent="";
            String szTemp;
            
            while ( (szTemp = bis.readLine()) != null) {
                szContent+=szTemp+"\n";
            }
            bis.close();
            return szContent;
        }
        catch( Exception e ) {
            return "";
        }
    }
	
	public static StringBuffer readFileWithEncode(String filePath,String encode){
		StringBuffer sb=new StringBuffer();
		Reader reader = null;
		try {
			if((new File(filePath)).isFile()){ //�������ļ���ȥ���ļ����ݣ�Ŀ¼�Ļ��ǲ���ȥ���ġ�
			    FileInputStream fileinput = new FileInputStream(filePath);
			    // System.out.println("���ַ�Ϊ��λ��ȡ�ļ����ݣ�һ�ζ�����ֽڣ�");
			    // һ�ζ�����ַ�
			    char[] tempchars = new char[30];
			    int charread = 0;
				reader = new InputStreamReader(fileinput,encode);
			
			    // �������ַ����ַ������У�charreadΪһ�ζ�ȡ�ַ���
			    while ((charread = reader.read(tempchars)) != -1) {
			        // ͬ�����ε�\r����ʾ
			        if ((charread == tempchars.length)
			                && (tempchars[tempchars.length - 1] != '\r')) {
			            //System.out.print(tempchars);
			            sb.append(tempchars);
			        } else {
			            for (int i = 0; i < charread; i++) {
			                if (tempchars[i] == '\r') {
			                    continue;
			                } else {
			                    //System.out.print(tempchars[i]);
			                    sb.append(tempchars[i]);
			                }
			            }
			        }
			    }
		    }

		} catch (Exception e1) {
		    e1.printStackTrace();
		} finally {
		    if (reader != null) {
		        try {
		            reader.close();
		        } catch (IOException e1) {
		        }
		    }
		}
		return sb;
	}
}



//�����ļ���׺����
class Utils_Filter implements FilenameFilter{
	private String string=null;
	Utils_Filter(String s){
	string="."+s;
	}
	@Override
	public boolean accept(File dir, String name) {
		// TODO Auto-generated method stub
		return name.endsWith(string);
	}
	
}

	
	