package com.ulearning.onlineexam.base.utils;


import com.google.common.base.Preconditions;
import com.ulearning.onlineexam.base.model.constant.GlobalConstant;
import it.sauronsoftware.jave.Encoder;
import it.sauronsoftware.jave.MultimediaInfo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Date;

/**
 * 文件处理工具类
 */
@Slf4j
public class MyFileUtils  extends FileUtils {

    /**
     * 获取文件后缀,并转为小写
     * @param fileName
     * @return
     */
    public static String getFileExt(String fileName){
        if(StringUtils.isNotEmpty(fileName)){
            return StringUtils.trim(fileName.substring(fileName.lastIndexOf(".") + 1,fileName.length())).toLowerCase();
        }else{
            return "";
        }
    }

    /**
     * 获取文件名称
     * @param fileOrgName
     * @return
     */
    public static String getFileName(String fileOrgName){
        if(StringUtils.isNotEmpty(fileOrgName)){
            if(fileOrgName.indexOf(".") == -1){
                return fileOrgName;
            }else{
                return fileOrgName.substring(0,fileOrgName.lastIndexOf("."));
            }
        }else {
            return "";
        }
    }

    /**
     * 获取音视频长度
     * @param filePath
     * @return
     */
    public static long getDuration(String filePath){
        File source = new File(filePath);
        Encoder encoder = new Encoder();
        try{
            MultimediaInfo multimediaInfo = encoder.getInfo(source);
            return multimediaInfo.getDuration();
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }

    /**
     * 将文本内容追加到文件末尾
     * @param filePath
     * @param writeStrCon
     * @return
     */
    public static Boolean writeStringConAppendToFile(String filePath,String writeStrCon) {
        Boolean result = false;
        Preconditions.checkArgument(StringUtils.isNotEmpty(filePath),"文件路径不能为空");
        Preconditions.checkArgument(StringUtils.isNotEmpty(writeStrCon),"追加内容不能为空");
        File syncSqlFile = new File(filePath) ;
        StringBuffer sb = new StringBuffer();
        sb.append(writeStrCon).append("\n");
        BufferedWriter out = null;

        try{
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(syncSqlFile,true)));
            try{
                out.write(sb.toString());
                out.flush();
                result = true;
            }catch (IOException e){
                log.error("追加内容IO异常，",e);
                e.printStackTrace();
            }finally {
                if(out != null){
                    try{
                        out.close();
                    }catch (IOException e){
                        log.error("追加内容IO关闭异常,",e);
                        e.printStackTrace();
                    }
                }
            }
        }catch (FileNotFoundException e){
            log.error("文件不存在异常，",e);
            e.printStackTrace();
        }

        return result;
    }

    /**
     * 判断文件是否存在不存在则创建
     * @param name
     */
    public static void CheckFile(String name){
        File filePack = new File(name);
        if(!filePack.exists() && !filePack.isDirectory()){
            filePack.mkdirs();
        }
    }

    /**
     * 根据文件上传类型获得文件相对路径
     * @param fileName
     * @param saveFilePathKey
     * @return
     */
    public static String getFileAbstractPathByTpye(String fileName,String saveFilePathKey) {
        String abstractPath = null;
        String fileType = "";
        String ext = getFileExt(fileName);
        //音频
        if("mp3.wma.wav.ogg".indexOf(ext) > -1){
            fileType = GlobalConstant.RESOURCE_PATH_TYPE_AUDIOS;
        }else if("gif.jpg.jpeg.bmp.png.tiff.psd".indexOf(ext) > -1){
            //图片
            fileType = GlobalConstant.RESOURCE_PATH_TYPE_IMAGES;
        }else if("wmv.avi.mpg.rm.rmvb.mp4.mov.dat.vob.flv.3gp".indexOf(ext) > -1){
            fileType = GlobalConstant.RESOURCE_PATH_TYPE_VIDEOS;
        } else if("txt.doc.docx.ppt.pptx.xls.xlsx.pdf".indexOf(ext) > -1){
            fileType = GlobalConstant.RESOURCE_PATH_TYPE_FILES;
        } else {
            fileType = GlobalConstant.RESOURCE_PATH_TYPE_OTHERS;
        }
        abstractPath  =  saveFilePathKey + File.separator + fileType + File.separator +  getDateFilePath();
        return abstractPath;
    }
    /**
     * 获取文件绝对路径
     * @param realPath
     * @param abstractPath
     * @return
     */
    public static String getFileRealPathByType(String realPath,String abstractPath){
        String path = null;
        path = realPath.replace("file:","") + abstractPath;
        CheckFile(path);
        return path;
    }

    /**
     * 根据日期生成目录
     * @return
     */
    public static String getDateFilePath(){
        String year = MyDateUtils.getYear();
        String month = MyDateUtils.getMonth(new Date());
        String day = MyDateUtils.getDay(new Date());
        //生成日期路径
        String datePath = year + "/" + month + "/" + day;
        return datePath;
    }

    /**
     * 文件下载，写入response流
     * @param file
     * @param fileName
     * @param response
     * @throws IOException
     */
    public static void downloadFile(final File file, String fileName, HttpServletResponse response) throws IOException
    {
        InputStream inputStream = null;
        OutputStream outputStream = null;
        try
        {
            // 设置response
            response.reset();
            response.setCharacterEncoding("UTF-8");
            response.setContentType("multipart/form-data;charset="+ "UTF-8");
            response.setHeader( "Content-Disposition", "attachment;filename=" + new String( fileName.getBytes(System.setProperty("sun.jnu.encoding","utf-8")), "ISO8859-1" ) );

            // 生成文件输入字节流
            inputStream = new FileInputStream(file);
            // 生成文件输出字节流
            outputStream = response.getOutputStream();
            // 字节数组
            byte[] tmp = new byte[1024];
            // 读取字节长度
            int length = 0;
            while ((length = inputStream.read(tmp)) > 0)
            {
                outputStream.write(tmp, 0, length);
            }
            outputStream.flush();
        }catch(Exception e)
        {
            e.printStackTrace();
        }finally
        {
            if(outputStream != null)
            {
                outputStream.close();
            }
            if(inputStream != null)
            {
                inputStream.close();
            }
        }
    }

    /**
     * 复制文件
     * @param src 源文件
     * @param dst 目的文件
     * @throws Exception
     */
    public static void copy(File src, File dst) throws Exception{
        int BUFFER_SIZE=4096;
        InputStream in = null;
        OutputStream out = null;
        try {
            in = new BufferedInputStream(new FileInputStream(src), BUFFER_SIZE);
            out = new BufferedOutputStream(new FileOutputStream(dst),
                    BUFFER_SIZE);
            byte[] buffer = new byte[BUFFER_SIZE];
            int len = 0;
            while ((len = in.read(buffer)) > 0) {
                out.write(buffer, 0, len);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            if (null != in) {
                try {
                    in.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                in=null;
            }
            if (null != out) {
                try {
                    out.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                out=null;
            }
        }
    }

    /**
     * 删除文件
     * @param fileName 文件名
     * @return 如果删除成功，返回true，否则返回false
     */
    public static boolean deleteFile(String fileName) {
        File file = new File(fileName);
        if(file.exists() && file.isFile()) {
            if(file.delete()) {
                log.debug("删除文件"+fileName+"成功！");
                return true;
            } else {
                log.debug("删除文件"+fileName+"失败！");
                return false;
            }
        } else {
            log.debug(fileName+"文件不存在");
            return true;
        }
    }

    /**
     * 删除目录文件
     * @param dirName 目录名
     * @return 如果删除成功返回true,否则返回false
     */
    public static boolean deleteDirectroy(String dirName) {
        String dirNames = dirName;
        if(!dirNames.endsWith(File.separator)) {
            dirNames = dirNames + File.separator;
        }
        boolean flag = true;
        File dirFile = new File(dirNames);
        if(dirFile.exists() && dirFile.isDirectory()) {
            File[] files = dirFile.listFiles();
            for(int i = 0;i < files.length;i++) {
                if(files[i].isFile()) {
                    //删除失败则跳出
                    if(!MyFileUtils.deleteFile(files[i].getAbsolutePath())){
                        flag = false;
                        break;
                    }
                } else if(files[i].isDirectory()) {
                    if(!MyFileUtils.deleteDirectroy(files[i].getAbsolutePath())) {
                        flag = false;
                        break;
                    }
                }
            }
            dirFile.delete();//删除目录
            if(!flag) {
                log.debug("删除目录"+dirName+"失败！");
                return false;
            } else {
                log.debug("删除目录"+dirName+"成功！");
                return true;
            }
        } else {
            log.debug(dirName+"文件不存在！");
            return true;
        }
    }

    /**
     * 删除文件或者目录
     * @param fileName 文件或目录名称
     * @return 如果删除成功返回true,否则返回false
     */
    public static boolean delFileOrDirectroy(String fileName) {
        File file = new File(fileName);
        if(!file.exists()) {
            log.debug(fileName+"不存在！");
            return true;
        }
        if(file.isFile()) {
            return MyFileUtils.deleteFile(fileName);
        } else {
            return MyFileUtils.deleteDirectroy(fileName);
        }
    }

    /**
     * 对文件进行MD5获取唯一指纹信息
     * @param file 文件
     * @param start 开始位置
     * @param end 结束位置
     * @return
     * @throws IOException
     */
    public static String fileMD5(MultipartFile file, int start, int end) throws IOException{
         Preconditions.checkArgument(file != null,"输入文件不能为空");
         Preconditions.checkArgument(end >= start,"加密开始位置不能大于结束位置");

         InputStream fis = file.getInputStream();
         Long fileSize = file.getSize();
         int splitLength;
         if(start < 0){
             start = 0;
         }
         if(end < fileSize){
             splitLength = end - start;
         }else{
             splitLength = (int) (fileSize - start);
         }

         byte[] buffer  = new byte[splitLength];

         fis.read(buffer);

        return MyDigestUtils.md5Hex(buffer);
    }

    /**
     * 获取项目网络地址根路径。类似于 "www.baidu.com"，或 "192.168.0.1/projectname"
     * @param HttpServletRequest request
     */
    private static String basePath = "";
    public static String initBashPath(HttpServletRequest request){
        if(StringUtils.isEmpty(basePath)){
            //得到IE地址栏地址 如：http://localhost:8080/TEST/test
            String curWwwPath = request.getRequestURL().toString();
            //得到相对地址 如：/TEST/test
            String relativePath = request.getRequestURI();
            int pos = curWwwPath.indexOf(relativePath);
            //获取主机地址 如：http://localhost:8080
            String localhostPath = curWwwPath.substring(0,pos);
            //获取带'/'的项目名，如：/TEXT
            String projectName = relativePath.substring(0, relativePath.substring(1).indexOf("/") + 1);
            basePath = localhostPath + projectName;
        }
        return basePath;
    }

    /**
     * 递归删除文件夹
     * @param file
     * @return
     */
    public static boolean deleteFile(File file) {
        if(file==null||!file.exists()){

            return true;
        }
        if (file.isDirectory()) {
            String[] children = file.list();//递归删除目录中的子目录下
            for (int i=0; i<children.length; i++) {
                boolean success = deleteFile(new File(file, children[i]));
                if (!success) {
                    return false;
                }
            }
        }
        // 目录此时为空，可以删除
        return file.delete();
    }

    public static void main(String[] args) {
        long dur = getDuration("D:\\KuGou");
        System.out.println(dur/60000 + ":" + (dur/1000 - dur/60000*60));
    }
}
