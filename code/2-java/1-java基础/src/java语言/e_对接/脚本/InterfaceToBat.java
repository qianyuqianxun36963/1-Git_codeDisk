package java语言.e_对接.脚本;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class InterfaceToBat {
    public static void main(String[] args) throws IOException {
        //单条指令的执行，直接给出指令即可。如下。
        //String batString="net user"; //cmd 有些命令是没有而powershell有的，如get-command, 这里只要后者会报错。
        
        //多条指令一起执行,可以加cmd /c 开头，然后多条指令,用‘&&’分隔指令。
        //String batString="cmd /c net user && net user";  //多条指令，用“&&”分隔
        
        //执行文件里的内容可以读出，并保存在String对象里，这样可以省去读写文件的操作，效率更高。这里，可以复制粘贴
        //String powershellstring="&{[这里直接粘贴batfile_string.txt文件里的内容]}";
        //String batString="cmd /c net user  &&net user  &&net user  ";  //多条指令，用“&&”分隔
        
        //下面这句，是用了自己写的方法，将.bat文件中的内容读字符串然后执行。
        //FileUtils.setBasepath("/src/java语言");
        //String batString="cmd /c "+FileUtils.readBatFile("batfile.bat","gbk",false);
        
        //直接执行脚本语句的方式执行脚本。
        //System.out.println("执行: "+batString);
        //InterfaceToBat.runbatstring(batString);
        
        //batfilename 这里的文件名字可以很随意，只要是‘/’和‘\\’的组合就行。
        String batfilename = FileUtils.getcurpath()+"\\src/java语言\\d_对接/脚本\\shellsfiles\\batfile.bat";
        //String batfilename ="D:\\SVN\\SVNversion\\bin\\svnSetup.bat";
        //执行文件的方式执行脚本
        InterfaceToBat.runbatfile(batfilename);

        //其实对已bat文件的执行，都一样。bat全名可以在exec方法中直接当命令.
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
