package u.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;

import javax.servlet.http.HttpServletResponse;

/**
 * 简介：文件处理工具类<BR/>
 *
 * 描述：文件读写生成一些常用操作的API<BR/>
 *
 * @author   zhangCaho
 * 
 * @see      [
 * 				java.io.File,
 * 				java.io.OutputStreamWriter.OutputStreamWriter,
 * 				java.io.FileOutputStream.FileOutputStream
 * 			 ]
 *
 * @since 	 JDK1.7
 *
 * @version  V1.00
 *
 * @date     2017-6-23 15:58:03
 */
public class FileUtils
{
	
	/**
	 * 功能描述：将文本内容追加到文件末尾  
	 * 
	 *
	 * @param  [java.util.String] filePath    <文件路径>
	 * 		   Example:"G:/syncSQL.sql"
	 * 
	 * @param  [java.util.String] writeStrCon <添加内容>
	 * 		   Example:
	 * 					" insert into bsh_base_user_info(user_sex,create_user_id,create_time,upate_time,is_verify,site_id,real_name,id,user_nick)values ('2','9d147dbe9f644d99b4a8cca7e815f45b','2011-03-29 13:50:35.0','2011-03-29 13:50:35.0','1','e089405566cf4a539106cb198ff14b94','程','ff8080812eff609b012f0029e33c0011','省级'); "
	 *
	 * @return [java.lang.boolean] 是否完成            <完成:true,异常或者未完成:false>
	 * 
	 * @author zhangChao
	 *
	 * @date   2017-6-23 15:59:44
	 */
	public static Boolean writeStringConAppendToFile(String filePath,String writeStrCon)
	{
		// 返回值定义
		Boolean result = Boolean.FALSE;
		
		/**1. 参数校验*/
		
		if(isNullOrBlank(filePath))
		{
			System.out.println("[FileUtils.writeStringConAppendToFile]:文件路径不能为空");
			return result;
		}
		
		if(isNullOrBlank(writeStrCon))
		{
			System.out.println("[FileUtils.writeStringConAppendToFile]:追加内容不能为空");
			return result;
		}
		
		/**2. 读取或者创建文件*/
		File syncSQLFile = new File(filePath);
		
		/**3. 内容添加*/
		StringBuffer sb = new StringBuffer();
		
		sb.append(writeStrCon).append("\n");
		
		BufferedWriter out = null;
		
		/**4. IO内容添加*/
		try
		{
			out = new  BufferedWriter(new OutputStreamWriter(new FileOutputStream(syncSQLFile,true)));
			
			try
			{
				out.write(sb.toString());
				out.flush();
				result = Boolean.TRUE;
			}
			catch (IOException e)
			{
				System.out.println("[FileUtils.writeStringConAppendToFile]:追加内容IO异常读写-ErrorMsg is  ");
				e.printStackTrace();
			}
			finally
			{
				if(out!=null)
				{
					try
					{
						out.close();
					}
					catch (IOException e)
					{
						System.out.println("[FileUtils.writeStringConAppendToFile]:追加内容IO关闭异常-ErrorMsg is  ");
						e.printStackTrace();
					}
				}
			}
		}
		catch (FileNotFoundException e)
		{
			System.out.println("[FileUtils.writeStringConAppendToFile]:文件不存在异常-ErrorMsg is  ");
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	public static Boolean isNullOrBlank(String str)
	{
		return  (str == null) || (str.length() == 0);
	}
	

	/**
	 * 判断文件是否存在 不存在则创建
	 * @param name
	 */
	public static void CheckFile(String name)
	{
		 File filePack =new File(name);
         if  (!filePack .exists()  && !filePack .isDirectory())//文件夹是否存在 不存在则创建    
         {       
             filePack .mkdirs();    
         }
	}
	
	
	/**
	 * 
	 * 功能描述：根据文件上传类型获得文件存储的文件夹
	 *
	 *
	 * @param [java.lang.String] name <项目路径>
	 * 
	 * @param [java.lang.String] type <上传文件所属类型>
	 *
	 * @return [java.lang.String] path <文件存储地址>
	 * 
	 * @author chenjunjin
	 *
	 * @date 2017年3月21日上午11:46:21
	 */
	public static String getSavaFilePathByType(String name,String type,String saveFilePathKey)
	{
		String path =null;
		
		path = name +PropertiesUtil.fileParams.get(type)+"/"+PropertiesUtil.fileParams.get(saveFilePathKey);
		
		CheckFile(path);
		
		return path;
	}
	
	
	/**
	 * 
	 * 功能描述：将文件下载至指定文件夹
	 *
	 *
	 * @param [java.io.File] file <文件>
	 *
	 * @param [java.lang.String] fileName <文件名>
	 *
	 * @param [javax.servlet.http.HttpServletResponse] response <响应对象>
	 *
	 * @return void 
	 * 
	 * @author dh
	 *
	 * @date 2017年3月17日下午6:05:56
	 */
	public static void downloadFile(final File file, String fileName,
			HttpServletResponse response) throws IOException 
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
	
}
