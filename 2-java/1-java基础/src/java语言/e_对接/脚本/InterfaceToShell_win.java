package java����.e_�Խ�.�ű�;

//ִ��powershell�����ִ�н����

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class InterfaceToShell_win {
	public static void main(String[] args) throws IOException {
		
		//�ű���䣺
		//String powershellstring="net user";
		//String powershellstring="get-command";
		
		//ִ������shell��䣬�Ƚű��飺
		//�ű��鶨��:shell��䡢{shell���}ǰ����ֱ��ִ�еģ��������Ƕ�����һ���ű������&{shell���}�ӡ�&�����ţ�����ִ�иýű��顣
		//�ű�����Զ������һ��ִ��:{shell��� ;shell���;shell���}
		String powershellstring="&{$n=123+12; $n; Write-Host 'this is block'}";
		//String powershellstring="&{$n=123+12; $n; <# ������; ������ע�� *** ;#> ;Write-Host 'this is block';}";
		
		//ִ���ļ�������ݿ��Զ�������������String�������������ʡȥ��д�ļ��Ĳ�����Ч�ʸ��ߡ�������Ը���ճ��
		//String powershellstring="&{[����ֱ��ճ��powershell_string.txt�ļ��������]}";
		//String powershellstring="&{New-Item  -Path hkcu:/Software/Microsoft/Office/15.0/Excel;New-Item  -Path hkcu:/Software/Microsoft/Office/15.0/Excel/Security;New-ItemProperty hkcu:/Software/Microsoft/Office/15.0/Excel/Security -name 'ExtensionHardening' -value '0' -propertyType dword}";
		
		//������䣬�������Լ�д�ķ�������.ps1�ļ��е����ݶ��ַ���Ȼ��ִ�С�
		//String powershellstring="&{"+FileUtils.readPsFile("powershell.ps1","UTF-8",false)+"}";
		//String powershellstring="&{"+FileUtils.readPsFile("powershell2.ps1","UTF-8",false)+"}";
		
		
		//ֱ��ִ�нű����ķ�ʽִ�нű���
		System.out.println(powershellstring);
		InterfaceToShell_win.runshellstring(powershellstring);
		
		//powershell�ļ�λ�ã�
        //String shellfilename = FileUtils.getcurpath()+"\\src/java����\\�Խ�/�ű�\\shellsfiles\\powershell.ps1";
        //ִ���ļ��ķ�ʽִ�нű�
        //InterfaceToShell_win.runshellfile(shellfilename);
	}
	
	public static void runshellstring(String pstring) {
		String cmds =  "powershell -command "+pstring ;
        //String[] cmds = { "powershell","-command ",pstring }; 
        runshell(cmds);
    }
	
	public static void runshellfile(String filename) {
//		String cmds =  "powershell -file "+filename ;
		String[] cmds = { "powershell","-file",filename };
		runshell(cmds);
    }
	
	//��������runshell,���ǵ����
	public static void runshell(String str) {
		String[] strs={str};
		runshell(strs);
	}
	
	public static void runshell(String[] str) {
        BufferedReader br = null,br_error = null;
        try {
        	Process ps=null;
        	if(str.length==1) {
        		ps = Runtime.getRuntime().exec(str[0]);
        		//System.out.println(str[0]);
        	}
        	else ps = Runtime.getRuntime().exec(str);
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
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

            if (br != null) {
                try {
                    br.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
