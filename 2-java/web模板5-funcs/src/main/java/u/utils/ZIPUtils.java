package u.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class ZIPUtils {
   private static Logger logger = LogManager.getLogger(ZIPUtils.class);
	/**
	 * 获取在压缩文件中的文件名称，即相对于根目录的相对路径名
	 * @param dirPath 目录名
	 * @param file 文件名
	 * @return
	 */
	public static String getFileName(String dirPath,File file) {
		String dirPaths = dirPath;
		if( dirPaths.endsWith(File.separator)) {
			dirPaths = dirPaths + File.separator;
		}
		
		String filePath = file.getAbsolutePath();
		//对目录，必须在file名字后面加上“/”,表示它将以目录存储
		if(file.isDirectory()) {
			filePath += "/";
		}
		int index = filePath.indexOf(dirPaths);
		return filePath.substring(index + dirPaths.length());
	}
	
	/**
	 * 压缩文件或者目录
	 * @param srcDirName 压缩的根目录
	 * @param fileName 根目录下的待压缩文件名或者文件夹名，如果是*或者""标识根目录下的所有文件
	 * @param descFileName 目标zip文件
	 * @throws Exception
	 */
	public static void zipFiles(String srcDirName,String fileName,String descFileName) throws Exception {
		if(StringUtils.isBlank(srcDirName)) {
			logger.error("文件压缩失败 目录"+srcDirName+" 不存在！");
			return ;
		}
		
		File fileDir = new File(srcDirName);
		if(!fileDir.exists() || !fileDir.isDirectory()) {
			logger.error("文件压缩失败,目录 " + srcDirName + " 不存在！");
			return ;
		}
		
		String dirPath = fileDir.getAbsolutePath();
		
		File descFile = new File(descFileName);
		try{
			ZipOutputStream zout = new ZipOutputStream(new FileOutputStream(descFile));
			if("*".equals(fileName) || "".equals(fileName)) {
				ZIPDirectoryToZip(dirPath,fileDir,zout);
			} else {
				File file = new File(fileDir,fileName);
				if(file.isFile()){
					ZIPOneFileToZIPFile(dirPath,file,zout);
				} else {
					ZIPDirectoryToZip(dirPath,file,zout);
				}
				
			}
			zout.close();
			logger.debug(descFileName+"文件压缩成功！");
		}catch(Exception e){
			logger.error("文件压缩失败，" + e.getMessage());
			throw e;
		}
	}
	
	/**
	 * 压缩目录下的所有文件
	 * @param dirPath
	 * @param fileDir
	 * @param zout
	 * @throws Exception
	 */
	public static void ZIPDirectoryToZip(String dirPath,File fileDir,ZipOutputStream zout) throws Exception {
		if(fileDir.isDirectory()) {
			File[] files = fileDir.listFiles();
			if(files.length == 0) {
				ZipEntry entry = new ZipEntry(getFileName(dirPath,fileDir));
				try{
					zout.putNextEntry(entry);
					zout.closeEntry();
				}catch(Exception e){
					throw e;
				}
				return ;
			}
			
			for(int i = 0;i < files.length;i++) {
				if(files[i].isFile()) {
					//如果是文件，则调用文件压缩方法
					ZIPOneFileToZIPFile(dirPath,files[i],zout);
				} else {
					//如果是目录，则递归调用
					ZIPDirectoryToZip(dirPath,files[i],zout);
				}
			}
		}
	}
	
	/**
	 * 将对应文件压缩到zip输出流
	 * @param dirPath
	 * @param file
	 * @param zout
	 * @throws Exception 
	 */
	public static void ZIPOneFileToZIPFile(String dirPath,File file,ZipOutputStream zout) throws Exception {
		FileInputStream fin = null;
		ZipEntry entry = null;
		byte[] buf = new byte[4096];
		int readByte = 0;
		if (file.isFile()) {
			try{
				//创建一个文件输入流
				fin = new FileInputStream(file);
				//根据文件名创建zipentry
				entry = new ZipEntry(getFileName(dirPath,file));
				//存储信息到压缩文件
				zout.putNextEntry(entry);
				//复制字节到压缩文件
				while((readByte = fin.read(buf)) != -1) {
					zout.write(buf,0,readByte);
				}
				zout.closeEntry();
				fin.close();
 			}catch(Exception e){
				throw e;
			}
		}
	}
	
	/**
	 * 将压缩文件，解压到指定文件夹下
	 * @param zipFileName
	 * @param descFileName
	 * @return
	 */
	public static boolean unZipFiles(String zipFileName,String descFileName) {
		String descFileNames = descFileName;
		if(!descFileNames.endsWith(File.separator)) {
			descFileNames = descFileNames + File.separator;
		}
		try{
			ZipFile zipFile = new ZipFile(zipFileName);
			ZipEntry entry = null;
			String entryName = null;
			String descFileDir = null;
			byte[] buf = new byte[4096];
			int readByte = 0;
			Enumeration<? extends ZipEntry> enums = zipFile.entries();
			while (enums.hasMoreElements()) {
				entry = (ZipEntry) enums.nextElement();
				entryName = entry.getName();
				descFileDir = descFileNames + entryName;
				if(entry.isDirectory()) {
					new File(descFileDir).mkdirs();
					continue;
				} 
				File file = new File(descFileDir);
				File parent = file.getParentFile();
				if(parent != null && !parent.exists()) {
					parent.mkdirs();
				}
				
				OutputStream out = new FileOutputStream(file);
				InputStream in = zipFile.getInputStream(entry);
				while((readByte = in.read(buf)) != -1) {
					out.write(buf,0,readByte);
				}
				out.close();
				in.close();	
			}
			zipFile.close();
			logger.debug("文件解压成功！");
			return true;
		}catch(Exception e){
			logger.debug("文件解压失败，"+ e);
			return false;
		}
	}
	
	/**
	 * 解压文件zip，并返回文件列表
	 * @param zipFileName
	 * @param descFileName
	 * @return
	 */
	public static List<File> upZipFiles(String zipFileName,String descFileName) {
		String descFileNames = descFileName;
		if(!descFileNames.endsWith(File.separator)) {
			descFileNames = descFileNames + File.separator;
		}
		
		List<File> listFile = new ArrayList<File>();
		try{
			ZipFile zipFile = new ZipFile(zipFileName);
			ZipEntry entry = null;
			String entryName = null;
			String descFileDir = null;
			
			byte[] buf = new byte[4096];
			
			int readByte = 0;
			Enumeration<? extends ZipEntry> enums = zipFile.entries();
			while (enums.hasMoreElements()) {
				entry = (ZipEntry) enums.nextElement();
				entryName = entry.getName();
				descFileDir = descFileNames + entryName;
				if(entry.isDirectory()) {
					new File(descFileDir).mkdirs();
					continue;
				} 
				File file = new File(descFileDir);
				File parent = file.getParentFile();
				if(parent != null && !parent.exists()) {
					parent.mkdirs();
				}
				
				OutputStream out = new FileOutputStream(file);
				InputStream in = zipFile.getInputStream(entry);
				while((readByte = in.read(buf)) != -1) {
					out.write(buf,0,readByte);
				}
				out.close();
				in.close();
				listFile.add(file);
			}
			zipFile.close();
			logger.debug("文件解压成功！");
			return listFile;
		}catch(Exception e){
			logger.debug("文件解压失败，"+ e);
			return listFile;
		}
	}
}
