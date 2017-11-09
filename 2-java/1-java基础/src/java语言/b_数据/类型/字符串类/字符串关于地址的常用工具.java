package java语言.b_数据.类型.字符串类;

import java.io.File;

public class 字符串关于地址的常用工具 {
    public static void main(String[] args) throws Exception { 
        String badpath="E:/1-java\\webApps/web项目框架/1-模板引擎/freemark\\src\\freemark\\fileModel\\ExportFile\\outFile.doc";
        String filepath="E:\\1-java\\webApps\\web项目框架\\1-模板引擎\\freemark\\src\\freemark\\fileModel\\ExportFile\\outFile.doc";
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
    
    //常常在输出的时候文件夹可能不存在，这时，需要创建文件夹。
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

/*例如：获取到的文件路径为C:\Documents and Settings\Leeo\My Documents\logo.gif

现在想要取得图片的名称logo.gif，我们知道反斜杠“\”是转义字符，所以不能直接

String temp[] = filePath.split("\");//filePath的值就是上面的文件路径

来分割文件路径，而应该这样写


*java中\\表示一个\，而regex中\\也表示\，
*所以当\\\\解析成regex的时候为\\
*
String temp[] = filePath.split("\\\\");

在Linux系统中

System.getProperty("file.separator", "\\")

输出为“/”，而在Windows系统中输出为“\”，所以要兼容两者可以这么写

String temp[] = filePath.replaceAll("\\\\","/").split("/");

获取文件名称的完整代码如下：

String temp[] = filePath.replaceAll("\\\\","/").split("/");
String fileName = ""
if(temp.length > 1){
fileName = temp[temp.length - 1];
}*/