package java语言.d_系统.io操作;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

/*import com.eos.system.annotation.Bizlet;

@Bizlet*/
public class 城投java执行文件 {
	
	static String curday=getCurtime("yyyyMMdd");
	static String curtime=getCurtime("yyyyMMddHHmmss");
	
	//存放临时文件的目录。
	static String dirPath="C:\\exchangusermanager\\add\\"+curday+"\\";
	
	static String userfilePath=dirPath+curtime+"mailbox.csv";
	static String shellfilePath=dirPath+curtime+"addmailbox.ps1";
	static String execFile="cmd /c start C:/exchangusermanager/add/startps1.bat";
	
	
	public static void main(String[] args) throws IOException {
		adduser("wangjun","ya","","1Qa2ws3ed");
		//String[] multiusers={"123,123,123,123","12,12,12,12"};
		//multiadduser(multiusers);
		
	}
	
	/*@Bizlet*/
	@SuppressWarnings("unused")
	public static void adduser(String name,String alias,String UPN, String pwd) throws IOException{
		creatfiles();
		String[] userinfo={name,alias,UPN,pwd};
		String infotoWrite=join(userinfo,",");
		writetoUserfile(infotoWrite);	
		
		Runtime runtime=Runtime.getRuntime();
		try{
			//runtime.exec(execFile);
			timer();//执行定时程序，删除临时文件。
		}catch(Exception e){
			System.out.println("Error!");
		}
	}
	
	public static void multiadduser(String[] userInfos) throws IOException{
		creatfiles();
		String infotoWrite=join(userInfos,"\r\n");
		writetoUserfile(infotoWrite);	
		
		Runtime runtime=Runtime.getRuntime();
		try{
			runtime.exec(execFile);
			timer();//执行定时程序，删除临时文件。
		}catch(Exception e){
			System.out.println("Error!");
		}
	}
	
	public static String join(String[] userinfo,String segment){
		String str="";int end = 0;
		for(int i=0;i<userinfo.length-1;i++){
			str=str+userinfo[i]+segment;
			end=i+1;
		}
		str=str+userinfo[end];
		return str;
	}
	
	public static String getCurtime(String formatestr){
		SimpleDateFormat sformat=new SimpleDateFormat(formatestr);
		String stime=sformat.format(new Date());
		return stime;
	}
	
	/******************************** 生成临时文件   *******************************/
	public static void creatfiles() throws IOException {  
		 File f=new File(dirPath);
		 if(!f.exists()){
		   f.mkdirs();
		 }
		 new File(userfilePath).createNewFile(); 
		 new File(shellfilePath).createNewFile(); 
	}
	
	/******************************** 数据写入临时文件   *******************************/
	public static void writetoUserfile(String infotoWrite){
		try{
			File userfile=new File(userfilePath);
			userfile.createNewFile();
			FileWriter fw=new FileWriter(userfile);
			
			fw.write(infotoWrite);
			fw.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static void writetoShellfile(String infotoWrite){
		try{
			File shellfile=new File(shellfilePath);
			shellfile.createNewFile();
			FileWriter fw=new FileWriter(shellfile);
			
			fw.write(infotoWrite);
			fw.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	/******************************** 定时删除临时文件   *******************************/
	// 第一种方法：设定指定任务task在指定时间time执行 schedule(TimerTask task, Date time)  
    public static void timer() {  
        Timer timer = new Timer();  
        timer.schedule(new TimerTask() {  
            public void run() {  
                System.out.println("-------定时删除临时文件-------");
                deleteTempFiles();
                
            }  
        }, 8000);// 设定指定的时间time,此处为8000毫秒  
    } 
	
	//删除生成的临时脚本文件和用户信息。
	public static void deleteTempFiles(){
		deleteFile(new File(dirPath));
		/*delete(userfilePath);
		delete(shellfilePath);*/
	}
	
	//删除单个文件。
	public static boolean delete(String fileName) {  
		  File file = new File(fileName);  
		  if (!file.exists()) {  
			  System.out.println("删除文件失败:" + fileName + "不存在！");  
			  return false;  
		  } else {  
			  if (file.delete()) {  
			    System.out.println("删除单个文件" + fileName + "成功！");  
			    return true;  
			  } else {  
			    System.out.println("删除单个文件" + fileName + "失败！");  
			    return false;  
			  }  
		  }  
	}    
	
		
	public static void deleteFile(File file){  
        if(file.isFile()){//表示该文件不是文件夹  
            file.delete();  
        }else{  
            //首先得到当前的路径  
            String[] childFilePaths = file.list();  
            for(String childFilePath : childFilePaths){  
                File childFile=new File(file.getAbsolutePath()+"\\"+childFilePath);  
                deleteFile(childFile);  
            }  
            file.delete();  
        }  
    }  
		
}
