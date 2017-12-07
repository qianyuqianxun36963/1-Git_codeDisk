package u.utils;


/***
 * 简介：常量工具类<BR/>
 *
 * 描述：常量工具类<BR/>
 *
 * @author  zc
 * 
 * @see   [相关类描述]
 *
 * @since JDK1.7
 *
 * @version  V1.00
 *
 * @date   2017年6月30日下午2:02:24
 */
public class ConstantUtil
{
	/**
	 * 文件上传地址
	 */
	public static String path = ""; 
	
	
	static
	{
		//UPLOAD_FILE_PATH = PropertiesUtil.getvalue("UPLOAD_FILE_SAVE_DIR");
		path = "D:/server/nginx-1.8.1/image/";
	}
	
	
	/**
	 * 文件上传，空文件默认大小(文件新建时)
	 */
	public final static Integer size = -1; 
}
