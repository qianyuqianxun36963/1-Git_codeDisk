//package com.wh.eas.manage.base.utils;
//
//import java.io.*;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.web.multipart.MultipartFile;
//
//
//public class FileUploadUtil {
//	
//	/**
//	 * 判断文件是否存在 不存在则创建
//	 * @param name
//	 */
//	public static void CheckFile(String name)
//	{
//		 FileUtils.CheckFile(name);
//	}
//	
//	
//	/**
//	 * 
//	 * 功能描述：根据文件上传类型获得文件存储的文件夹
//	 *
//	 *
//	 * @param [java.lang.String] name <项目路径>
//	 * 
//	 * @param [java.lang.String] type <上传文件所属类型>
//	 *
//	 * @return [java.lang.String] path <文件存储地址>
//	 * 
//	 * @author chenjunjin
//	 *
//	 * @date 2017年3月21日上午11:46:21
//	 */
//	public static String getSavaFilePathByType(String name,String type,String saveFilePathKey)
//	{
//		return FileUtils.getSavaFilePathByType(name, type, saveFilePathKey);
//	}
//	
//	
//	/**
//	 * 
//	 * 功能描述：将文件下载至指定文件夹
//	 *
//	 *
//	 * @param [java.io.File] file <文件>
//	 *
//	 * @param [java.lang.String] fileName <文件名>
//	 *
//	 * @param [javax.servlet.http.HttpServletResponse] response <响应对象>
//	 *
//	 * @return void 
//	 * 
//	 * @author dh
//	 *
//	 * @date 2017年3月17日下午6:05:56
//	 */
//	public static void downloadFile(final File file, String fileName,
//			HttpServletResponse response) throws IOException 
//	{
//		FileUtils.downloadFile(file, fileName, response);
//	}
//	
//	/**
//	 * 功能描述：将文本内容追加到文件末尾  
//	 * 
//	 *
//	 * @param  [java.util.String] filePath    <文件路径>
//	 * 		   Example:"G:/syncSQL.sql"
//	 * 
//	 * @param  [java.util.String] writeStrCon <添加内容>
//	 * 		   Example:
//	 * 					" insert into bsh_base_user_info(user_sex,create_user_id,create_time,upate_time,is_verify,site_id,real_name,id,user_nick)values ('2','9d147dbe9f644d99b4a8cca7e815f45b','2011-03-29 13:50:35.0','2011-03-29 13:50:35.0','1','e089405566cf4a539106cb198ff14b94','程','ff8080812eff609b012f0029e33c0011','省级'); "
//	 *
//	 * @return [java.lang.boolean] 是否完成            <完成:true,异常或者未完成:false>
//	 * 
//	 * @author zhangChao
//	 *
//	 * @date   2017-6-23 15:59:44
//	 */
//	public static Boolean writeStringConAppendToFile(String filePath,String writeStrCon)
//	{
//		return FileUtils.writeStringConAppendToFile(filePath,writeStrCon);
//	}
//	
//	
//	public static Boolean isNullOrBlank(String str)
//	{
//		return  (str == null) || (str.length() == 0);
//	}
//	
//	
//	/**
//	 * @param file 			//文件对象
//	 * @param filePath		//上传路径
//	 * @param fileName		//文件名
//	 * @return  文件名
//	 */
//	public static String fileUp(MultipartFile file, String filePath, String fileName){
//		String extName = ""; // 扩展名格式：
//		try {
//			if (file.getOriginalFilename().lastIndexOf(".") >= 0){
//				extName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
//			}
//			copyFile(file.getInputStream(), filePath, fileName+extName).replaceAll("-", "");
//		} catch (IOException e) {
//			System.out.println(e);
//		}
//		return fileName+extName;
//	}
//	
//	/**
//	 * 写文件到当前目录的upload目录中
//	 * 
//	 * @param in
//	 * @param fileName
//	 * @throws IOException
//	 */
//	private static String copyFile(InputStream in, String dir, String realName)
//			throws IOException {
//		File file = new File(dir, realName);
//		if (!file.exists()) {
//			if (!file.getParentFile().exists()) {
//				file.getParentFile().mkdirs();
//			}
//			file.createNewFile();
//		}
//		org.apache.commons.io.FileUtils.copyInputStreamToFile(in, file);
//		return realName;
//	}
//	
//	/**
//	 * 获取项目网络地址根路径。类似于 "www.baidu.com"，或 "192.168.0.1/projectname"
//	 * @param HttpServletRequest request
//	 */
//	
//	private static String basePath = "";
//	private static String initBashPath(HttpServletRequest request){
//		if(StringUtils.isEmpty(basePath)){
//			//得到IE地址栏地址 如：http://localhost:8080/TEST/test
//			String curWwwPath = request.getRequestURL().toString();
//			//得到相对地址 如：/TEST/test
//			String relativePath = request.getRequestURI();
//			int pos = curWwwPath.indexOf(relativePath);
//			//获取主机地址 如：http://localhost:8080
//			String localhostPath = curWwwPath.substring(0,pos);
//			//获取带'/'的项目名，如：/TEXT
//			String projectName = relativePath.substring(0, relativePath.substring(1).indexOf("/") + 1);
//			basePath = localhostPath + projectName;
//		}
//		return basePath;
//	}
//	
//	/**
//	 * 获取文件，访问路径前缀。这里主要是根据配置文件，读取资源访问路径的前部分，然后与数据库中地址拼接！
//	 * 没有参数，只需根据配置文件即可获取。
//	 */
//	private static String resourcePath = "";
//	private static String initResourcePath(){
//		if(StringUtils.isEmpty(resourcePath)&&StringUtils.isNotEmpty(basePath)){
//			String pathDomain = PropertiesUtil.fileParams.get("path_domain");
//			String pathPort = PropertiesUtil.fileParams.get("path_port");
//			if(!pathDomain.equals("local")){
//				if(!pathDomain.equals("empty")){
//					resourcePath = pathDomain;
//				}
//			}else{
//				resourcePath = basePath.substring(0,basePath.lastIndexOf(":")) + (StringUtils.isEmpty(pathPort)?"" : ":"+pathPort );
//			}
//		}
//		return resourcePath;
//	}
//	
//	/**
//	 * 获取上传静态资源服务的项目根路径！
//	 * 没有参数，只需根据配置文件即可获取。
//	 */
//	private static String uploadServerUrl = "";
//	private static String initUploadServerUrl(){
//		if(StringUtils.isEmpty(uploadServerUrl)&&StringUtils.isNotEmpty(basePath)){
//			uploadServerUrl = PropertiesUtil.fileParams.get("uploadServerUrl");
//			if(uploadServerUrl.equals("local")){
//				uploadServerUrl = basePath;
//			}
//		}
//		return uploadServerUrl;
//	}
//	
//	public static void initAttribute(HttpServletRequest request){
//		basePath = initBashPath(request);
//		resourcePath = initResourcePath();
//		uploadServerUrl = initUploadServerUrl();
//		
//	}
//	
//	public static String getBashPath(){
//		return basePath;
//	}
//	
//	public static String getResourcePath(){
//		return resourcePath;
//	}
//	
//	public static String getUploadServerUrl(){
//		return uploadServerUrl;
//	}
//	
//}
