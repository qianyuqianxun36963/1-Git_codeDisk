package java����.d_ϵͳ.io����;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

/*import com.eos.system.annotation.Bizlet;

@Bizlet*/
public class ��Ͷjavaִ���ļ� {
	
	static String curday=getCurtime("yyyyMMdd");
	static String curtime=getCurtime("yyyyMMddHHmmss");
	
	//�����ʱ�ļ���Ŀ¼��
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
			timer();//ִ�ж�ʱ����ɾ����ʱ�ļ���
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
			timer();//ִ�ж�ʱ����ɾ����ʱ�ļ���
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
	
	/******************************** ������ʱ�ļ�   *******************************/
	public static void creatfiles() throws IOException {  
		 File f=new File(dirPath);
		 if(!f.exists()){
		   f.mkdirs();
		 }
		 new File(userfilePath).createNewFile(); 
		 new File(shellfilePath).createNewFile(); 
	}
	
	/******************************** ����д����ʱ�ļ�   *******************************/
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
	
	/******************************** ��ʱɾ����ʱ�ļ�   *******************************/
	// ��һ�ַ������趨ָ������task��ָ��ʱ��timeִ�� schedule(TimerTask task, Date time)  
    public static void timer() {  
        Timer timer = new Timer();  
        timer.schedule(new TimerTask() {  
            public void run() {  
                System.out.println("-------��ʱɾ����ʱ�ļ�-------");
                deleteTempFiles();
                
            }  
        }, 8000);// �趨ָ����ʱ��time,�˴�Ϊ8000����  
    } 
	
	//ɾ�����ɵ���ʱ�ű��ļ����û���Ϣ��
	public static void deleteTempFiles(){
		deleteFile(new File(dirPath));
		/*delete(userfilePath);
		delete(shellfilePath);*/
	}
	
	//ɾ�������ļ���
	public static boolean delete(String fileName) {  
		  File file = new File(fileName);  
		  if (!file.exists()) {  
			  System.out.println("ɾ���ļ�ʧ��:" + fileName + "�����ڣ�");  
			  return false;  
		  } else {  
			  if (file.delete()) {  
			    System.out.println("ɾ�������ļ�" + fileName + "�ɹ���");  
			    return true;  
			  } else {  
			    System.out.println("ɾ�������ļ�" + fileName + "ʧ�ܣ�");  
			    return false;  
			  }  
		  }  
	}    
	
		
	public static void deleteFile(File file){  
        if(file.isFile()){//��ʾ���ļ������ļ���  
            file.delete();  
        }else{  
            //���ȵõ���ǰ��·��  
            String[] childFilePaths = file.list();  
            for(String childFilePath : childFilePaths){  
                File childFile=new File(file.getAbsolutePath()+"\\"+childFilePath);  
                deleteFile(childFile);  
            }  
            file.delete();  
        }  
    }  
		
}
