package java语言.e_对接.脚本;

//执行powershell并获得执行结果。

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class InterfaceToShell_win {
	public static void main(String[] args) throws IOException {
		
		//脚本语句：
		//String powershellstring="net user";
		//String powershellstring="get-command";
		
		//执行批量shell语句，既脚本块：
		//脚本块定义:shell语句、{shell语句}前者是直接执行的，后者则是定义了一个脚本块对象。&{shell语句}加“&”符号，可以执行该脚本块。
		//脚本块可以多条语句一起执行:{shell语句 ;shell语句;shell语句}
		String powershellstring="&{$n=123+12; $n; Write-Host 'this is block'}";
		//String powershellstring="&{$n=123+12; $n; <# 招人了; 这里是注释 *** ;#> ;Write-Host 'this is block';}";
		
		//执行文件里的内容可以读出，并保存在String对象里，这样可以省去读写文件的操作，效率更高。这里，可以复制粘贴
		//String powershellstring="&{[这里直接粘贴powershell_string.txt文件里的内容]}";
		//String powershellstring="&{New-Item  -Path hkcu:/Software/Microsoft/Office/15.0/Excel;New-Item  -Path hkcu:/Software/Microsoft/Office/15.0/Excel/Security;New-ItemProperty hkcu:/Software/Microsoft/Office/15.0/Excel/Security -name 'ExtensionHardening' -value '0' -propertyType dword}";
		
		//下面这句，是用了自己写的方法，将.ps1文件中的内容读字符串然后执行。
		//String powershellstring="&{"+FileUtils.readPsFile("powershell.ps1","UTF-8",false)+"}";
		//String powershellstring="&{"+FileUtils.readPsFile("powershell2.ps1","UTF-8",false)+"}";
		
		
		//直接执行脚本语句的方式执行脚本。
		System.out.println(powershellstring);
		InterfaceToShell_win.runshellstring(powershellstring);
		
		//powershell文件位置：
        //String shellfilename = FileUtils.getcurpath()+"\\src/java语言\\对接/脚本\\shellsfiles\\powershell.ps1";
        //执行文件的方式执行脚本
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
	
	//重名函数runshell,他们的入参
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
            
            //返回信息的获取与展示。
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
