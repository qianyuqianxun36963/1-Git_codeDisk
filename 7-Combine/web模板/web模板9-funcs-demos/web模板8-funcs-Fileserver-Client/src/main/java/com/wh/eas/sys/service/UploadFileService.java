package com.wh.eas.sys.service;

import java.util.Map;



/**
 * 
 * 简介：操作文件资源库<BR/>
 *
 * 描述：对文件资源整合操作接口类<BR/>
 *
 * @author  chenjunjin
 * 
 *
 * @since JDK1.7
 *
 * @version  V1.00
 *
 * @date 2017年3月21日下午1:06:00
 */
public interface UploadFileService {
	/**
	 * 
	 * 功能描述：新增信息
	 *
	 *
	 * @param [java.lang.String] fileName <文件名称>
	 * 
	 * @param [java.lang.String] fileSize <文件大小>
	 * 
	 * @param [java.lang.String] time <上传文件在本地的创建时间>
	 * 
	 * @param [java.lang.String] type <上传类型>
	 * 
	 * @param [java.lang.String] SaveName <保存名称>
	 * 
	 * @param [java.lang.String] userId <创建人>
	 * 
	 * @author chenjunjin
	 *
	 * @date 2017年3月21日下午12:59:10
	 */
	public void insertFileINFO(String fileName,String fileSize,String time,String type,String SaveName,String userid,String Id);
	/**
	 * 
	 * 功能描述：查询资源库中是否有资源，并返回存储的name
	 *
	 *
	 * @param [java.lang.String] fileName <文件名称>
	 * 
	 * @param [java.lang.String] fileSize <文件大小>
	 * 
	 * @param [java.lang.String] time <上传文件在本地的创建时间>
	 * 
	 * @param [java.lang.String] type <上传类型>
	 * 
	 * @param [java.lang.String] userId <创建人>
	 *
	 * @return [java.util.Map] map <保存的文件信息>
	 * 
	 * @author chenjunjin
	 *
	 * @date 2017年3月21日下午12:59:10
	 */
	public Map<String, Object> getFileNameByInfo(String fileName,String fileSize,String time,String type,String userId);
	/**
	 * 
	 * 功能描述：删除数据库中资源
	 *
	 *
	 * @param [java.lang.String] fileName <文件名称>
	 * 
	 * @param [java.lang.String] fileSize <文件大小>
	 * 
	 * @param [java.lang.String] time <上传文件在本地的创建时间>
	 * 
	 * @param [java.lang.String] type <上传类型>
	 * 
	 * @param [java.lang.String] userId <创建人>
	 *
	 * @return [java.lang.Boolean] 返回值 <删除是否成功>
	 * 
	 * @author chenjunjin
	 *
	 * @date 2017年3月21日下午12:59:10
	 */
	public Boolean deleterFileByInfo(String fileName,String fileSize,String time,String type,String userId);
	/**
	 * 
	 * 功能描述：获得存储类型
	 *
	 *
	 * @param [java.lang.String] Savename <文件名称>
	 * 
	 *
	 * @return [java.util.Map] saveType <文件存储信息>
	 * 
	 * @author chenjunjin
	 *
	 * @date 2017年3月21日下午12:59:10
	 */
	public Map<String, Object> getsaveTypeBySavename(String Savename);

}
