package java����.e_�Խ�.�ű�;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class InterfaceToBat {
	public static void main(String[] args) throws IOException {
		//����ָ���ִ�У�ֱ�Ӹ���ָ��ɡ����¡�
		//String batString="net user"; //cmd ��Щ������û�ж�powershell�еģ���get-command, ����ֻҪ���߻ᱨ��
		
		//����ָ��һ��ִ��,���Լ�cmd /c ��ͷ��Ȼ�����ָ��,�á�&&���ָ�ָ�
		//String batString="cmd /c net user && net user";  //����ָ��á�&&���ָ�
		
		//ִ���ļ�������ݿ��Զ�������������String�������������ʡȥ��д�ļ��Ĳ�����Ч�ʸ��ߡ�������Ը���ճ��
		//String powershellstring="&{[����ֱ��ճ��batfile_string.txt�ļ��������]}";
		//String batString="cmd /c net user  &&net user  &&net user  ";  //����ָ��á�&&���ָ�
		
		//������䣬�������Լ�д�ķ�������.bat�ļ��е����ݶ��ַ���Ȼ��ִ�С�
		//FileUtils.setBasepath("/src/java����");
		//String batString="cmd /c "+FileUtils.readBatFile("batfile.bat","gbk",false);
		
		//ֱ��ִ�нű����ķ�ʽִ�нű���
		//System.out.println("ִ��: "+batString);
		//InterfaceToBat.runbatstring(batString);
		
		//batfilename ������ļ����ֿ��Ժ����⣬ֻҪ�ǡ�/���͡�\\������Ͼ��С�
		String batfilename = FileUtils.getcurpath()+"\\src/java����\\d_�Խ�/�ű�\\shellsfiles\\batfile.bat";
		//String batfilename ="D:\\SVN\\SVNversion\\bin\\svnSetup.bat";
		//ִ���ļ��ķ�ʽִ�нű�
        InterfaceToBat.runbatfile(batfilename);

        //��ʵ����bat�ļ���ִ�У���һ����batȫ��������exec������ֱ�ӵ�����.
        //InterfaceToBat.runbat(batString);
        //InterfaceToBat.runbat(batfilename);
	}
	
	public static void runbatfile(String batFileName) {
		runbat(batFileName);
    }

	public static void runbatstring(String batstr){
		runbat(batstr);
	}
	
	public static void runbat(String str){
		BufferedReader br = null,br_error = null;
		try {
            Process ps = Runtime.getRuntime().exec(str);
            ps.getOutputStream().close(); 
            //ps.getErrorStream().close(); 
            
          //������Ϣ�Ļ�ȡ��չʾ��
            br = new BufferedReader(new InputStreamReader(ps.getInputStream()));
            br_error = new BufferedReader(new InputStreamReader(ps.getErrorStream()));
            String line = null;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }
            while ((line = br_error.readLine()) != null) {
                System.out.println(line);
            }
            
            ps.waitFor();

        } catch (IOException ioe) {
            ioe.printStackTrace();
        } catch (InterruptedException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println("child thread done");
		
	}
   
}
