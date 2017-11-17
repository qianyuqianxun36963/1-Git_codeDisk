package com.wh.eas.sys.utils;


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
	public static String UPLOAD_FILE_PATH = ""; 
	
	
	static
	{
		//UPLOAD_FILE_PATH = PropertiesUtil.getvalue("UPLOAD_FILE_SAVE_DIR");
		UPLOAD_FILE_PATH = "W:/nginx-1.8.1/image/";
	}
	
	
	/**
	 * 文件上传，空文件默认大小(文件新建时)
	 */
	public final static Integer UPLOAD_TYPE_FILE_SIZE = -1; 
}
