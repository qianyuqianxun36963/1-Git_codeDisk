package java语言.d_系统.io操作;

import java语言.e_对接.正则表达式.正则表达式;

import java.io.*;


public class 文件类 {
	public static void main(String[] args) throws IOException {
		  String curpath = FileNameAndPath.getcurpath();
		  System.out.println("current file path:" + curpath);
//		  File dir=new File(FileNameAndPath.getcurpath());
		  
//		      注意这里要加‘scr’。
		  String filepath = curpath+"/src/java语言/c_系统/io操作/files";
		  ChangeFileUtil.changeName("2.txt", "1.txt", filepath);
		  
//		  MakeFileUtil.mkdir_withdir("C:/java/files");
//		  MakeFileUtil.mkdir_withoutdir("C:/java/files");
//		  MakeFileUtil.mkfile_withdir("C:/java/files/file.txt");
//		  MakeFileUtil.mkfile_withoutdir("C:/java/files/file.txt");

//		  ChangeFileUtil.changeNames_KeepPart("G:/生活/视频/一拳超人","一拳超人","\\d{2}","rmvb");
//		  ChangeFileUtil.changeNames_RemovePart("E:/java/workspace/java工具类","\\[([\\s\\S]*)\\]","rmvb");
//        ShowFileUtil.showChildFiles(dir,"file");
//        ShowFileUtil.showChildFiles(dir,"string");
//        ShowFileUtil.showFileInfs(file);
//        ShowFileUtil.showChoisedFiles(dir,"string","java");
//        ExecuteFileUtil.executeFile();
      
//        String filepath="E:/1-java\\\\webApps\\web网络功能/\3-功能场景\\excel操作\\src\\exportExcel_freemark\\outExcel.xls";
//        System.out.println(FileNameAndPath.getfileDir(filepath));
//        System.out.println(FileNameAndPath.getfilename(filepath));
	}
}

class MakeFileUtil{
	
	
	public static void mkdir_withdir(String filePath){
 		File dir=new File(filePath);
        System.out.println( dir.mkdir());//mkdir 创建目录，但是如果父一级目录不存在，他会返回false而不创建目录。API:mkdir
	}
	
	public static void mkdir_withoutdir(String filePath){
 		File dir=new File(filePath);
        System.out.println( dir.mkdirs());//mkdirs 创建所有路径，凭空创建，没有父目录的时候会创建所有需要的前面的目录。。
	}
	
	public static void mkfile_withdir(String filePath) throws IOException{
		File file=new File(filePath);
		System.out.println( file.createNewFile());
	}
	
	//截取一个文件名前面的目录名，如果目录已经存在，则不动，若不存在，则创建。
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
 * 删除文件和目录 
 *  
 * @author chen 
 *  
 */  
class DeleteFileUtil {  
  
 /** 
  * 删除文件，可以是文件或文件夹 
  *  
  * @param fileName 
  *            要删除的文件名 
  * @return 删除成功返回true，否则返回false 
  */  
	public static boolean delete(String fileName) {  
	    File file = new File(fileName);  
	    if (!file.exists()) {  
	        System.out.println("删除文件失败:" + fileName + "不存在！");  
	        return false;  
	    } else {  
	        if (file.isFile())  
	            return deleteFile(fileName);  
	        else  
	            return deleteDirectory(fileName);  
	    }  
	}  
  
 /** 
  * 删除单个文件 
  *  
  * @param fileName 
  *            要删除的文件的文件名 
  * @return 单个文件删除成功返回true，否则返回false 
  */  
	public static boolean deleteFile(String fileName) {  
	    File file = new File(fileName);  
	    // 如果文件路径所对应的文件存在，并且是一个文件，则直接删除  
	        if (file.exists() && file.isFile()) {  
	        if (file.delete()) {  
	            System.out.println("删除单个文件" + fileName + "成功！");  
	            return true;  
	        } else {  
	            System.out.println("删除单个文件" + fileName + "失败！");  
	            return false;  
	        }  
	    } else {  
	        System.out.println("删除单个文件失败：" + fileName + "不存在！");  
	        return false;  
	    }  
	} 
  
 /** 
  * 删除目录及目录下的文件 
  *  
  * @param dir 
  *            要删除的目录的文件路径 
  * @return 目录删除成功返回true，否则返回false 
  */  

public static boolean deleteDirectory(String dir) {  
    // 如果dir不以文件分隔符结尾，自动添加文件分隔符  
    if (!dir.endsWith(File.separator))  
        dir = dir + File.separator;  
    File dirFile = new File(dir);  
    // 如果dir对应的文件不存在，或者不是一个目录，则退出  
    if ((!dirFile.exists()) || (!dirFile.isDirectory())) {  
        System.out.println("删除目录失败：" + dir + "不存在！");  
        return false;  
    }  
    boolean flag = true;  
    // 删除文件夹中的所有文件包括子目录  
    File[] files = dirFile.listFiles();  
    for (int i = 0; i < files.length; i++) {  
        // 删除子文件  
        if (files[i].isFile()) {  
            flag = DeleteFileUtil.deleteFile(files[i].getAbsolutePath());  
            if (!flag)  
                break;  
        }  
        // 删除子目录  
        else if (files[i].isDirectory()) {  
            flag = DeleteFileUtil.deleteDirectory(files[i].getAbsolutePath());  
            if (!flag)  
                break;  
        }  
    }  
    if (!flag) {  
        System.out.println("删除目录失败！");  
        return false;  
    }  
    // 删除当前目录  
    if (dirFile.delete()) {  
        System.out.println("删除目录" + dir + "成功！");  
        return true;  
    } else {  
        return false;  
    }  
}  
  
 public static void main(String[] args) {  
//  // 删除单个文件  
//  String file = "c:/test/test.txt";  
//  DeleteFileUtil.deleteFile(file);  
//  System.out.println();  
//  //删除一个目录  
//  String dir = "c:/test";  
//  DeleteFileUtil.deleteDirectory(dir);  
//  System.out.println();  
//  // 删除文件  
//  dir = "c:/test/test0";  
//  DeleteFileUtil.delete(dir);  
  
 }  
  
} 

class  FileNameAndPath{
	
//	注释:
//		以执行文件为例。
//		/*下面文件路径的写法都行。*/
//		
//		/* '/' 表示文件路径的话，随意组合 */
//		//re.exec("D:/QvodPlayer/QvodPlayer.exe");
//		//re.exec("D:/QvodPlayer///QvodPlayer.exe");
//		//re.exec("D:/QvodPlayer//////QvodPlayer.exe");
//		//re.exec("D:////QvodPlayer//QvodPlayer.exe");
//		
//		/* '\' 表示文件路径的话，只要是双数也随意组合 */
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
	//保留文件名中的某一部分。
	//对文件夹下的所有文件重新命名。现在做的比较简单，只是匹配出源文件下的部分名称，然后拼在新名字后。
	public static void changeNames_KeepPart(String dir,String newname,String regexStr,String suffix){
		File file=new File(dir);
		File[] files=file.listFiles();
		for (File f : files){
	    	String string=正则表达式.matchString("\\d{2}",f.getName()).group();
	    	//System.out.println(f.getName()+"  comesout  "+string);
	    	File dest=new File(f.getParent()+"/"+newname+"_"+string+"."+suffix);
	    	f.renameTo(dest);
	    }
	}
	
	//去掉文件名中的某一部分
	public static void changeNames_RemovePart(String dir,String regexStr,String suffix){
		File file=new File(dir);
		File[] files=file.listFiles();
		for (File f : files){
			String filename=f.getName();
	    	String stringtoremove=正则表达式.matchString(regexStr,filename).group();
	    	String newname=filename.replaceAll(stringtoremove,"");
	    	System.out.println(stringtoremove);
	    	File dest=new File(f.getParent()+"/"+newname+"."+suffix);
	    	f.renameTo(dest);
	    }
	}
	
	//修改文件夹下某文件的文件名
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
	//执行可执行文件
	public static void executeFile(){
		try {
			@SuppressWarnings("unused")
			Runtime re=Runtime.getRuntime();
			//re.exec("javac 文件类.java");
			
			//File file=new File("C:\\Windows","Notepad.exe");
			//re.exec(file.getAbsolutePath());
			//re.exec("C:\\Windows/Notepad.exe");
			
			//re.exec("D:\\1-已安软件/QQPlayer/QQPlayer.exe"); //注意路径书写格式
			
			/*下面文件路径的写法都行。*/
			
			/* '/' 表示文件路径的话，随意组合 */
			//re.exec("D:/QvodPlayer/QvodPlayer.exe");
			//re.exec("D:/QvodPlayer///QvodPlayer.exe");
			//re.exec("D:/QvodPlayer//////QvodPlayer.exe");
			//re.exec("D:////QvodPlayer//QvodPlayer.exe");
			
			/* '\' 表示文件路径的话，只要是双数也随意组合 */
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
		System.out.println(dir.getName()+"下的所有文件：");
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
		System.out.println(dir.getName()+"下的所有\""+type+"\"类型的文件：");
		Utils_Filter filter=new Utils_Filter("java");
		
		if(flag.equals("string")){
		File[] filesFile=dir.listFiles(filter);//将实现了FilenameFilter接口的对象传入，作为筛选条件。
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
		infs[0]="文件名是 "+file.getName();
		infs[1]="文件绝对路径是 "+file.getAbsolutePath();
		infs[2]="文件父目录是 "+file.getParent();

		Boolean canR=file.canRead();	infs[3]="文件可读性："+canR.toString();
		Boolean canE=file.canExecute();	infs[4]="文件可执行："+canE.toString();
		Boolean isFile=file.isFile();	infs[5]="是否为文件："+isFile.toString();
		Boolean isDir=file.isDirectory();	infs[6]="是否为目录："+isDir.toString();
		
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
			if((new File(filePath)).isFile()){ //必须是文件才去读文件内容，目录的话是不会去读的。
			    FileInputStream fileinput = new FileInputStream(filePath);
			    // System.out.println("以字符为单位读取文件内容，一次读多个字节：");
			    // 一次读多个字符
			    char[] tempchars = new char[30];
			    int charread = 0;
				reader = new InputStreamReader(fileinput,encode);
			
			    // 读入多个字符到字符数组中，charread为一次读取字符数
			    while ((charread = reader.read(tempchars)) != -1) {
			        // 同样屏蔽掉\r不显示
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



//过滤文件后缀名。
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

	
	