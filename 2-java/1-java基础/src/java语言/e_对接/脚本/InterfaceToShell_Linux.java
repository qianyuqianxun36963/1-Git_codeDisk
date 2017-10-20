package java����.e_�Խ�.�ű�;

import java.io.InputStreamReader;
import java.io.LineNumberReader;

public class InterfaceToShell_Linux {
	public static void main(String[] args) {  
        // TODO Auto-generated method stub  
        String pwdString = runshellstring("pwd").toString();  
        String netsString = runshellstring("netstat -nat|grep -i \"80\"|wc -l").toString();  
           
        System.out.println("==========���ֵ=============");  
        System.out.println(pwdString);  
        System.out.println(netsString);  
    }  
	
	public static Object runshellstring(String powershellstring) {
		String[] cmds = { "/bin/sh -c "+powershellstring }; //δ��֤����֪���Բ���
//		String[] cmds = { "/bin/sh","-c ",powershellstring }; 
        return runshells(cmds);
    }
	
	public static Object runshellfile(String filename) {
//		String[] cmds = { "powershell -file "+filename }; //δ��֤����֪���Բ���
		String[] cmds = { "/bin/sh","-c ",filename }; //δ��֤����֪���Բ���
		return runshells(cmds);
    }
	
	public static Object runshells(String[] str) {  
        try {  
            Process ps=null;
        	if (str.length==1) ps = Runtime.getRuntime().exec(str[0]);
        	else ps = Runtime.getRuntime().exec(str);
            
            LineNumberReader br = new LineNumberReader(new InputStreamReader(  
            		ps.getInputStream()));  
            StringBuffer sb = new StringBuffer();  
            String line;  
         while ((line = br.readLine()) != null) {  
                System.out.println(line);  
                sb.append(line).append("\n");  
            }  
            return sb.toString();  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
        return null;  
    }  
}
