package com.wh.eas.sys.dao;

import java.util.Map;

/**
 * 简介：文件处理DAO层<BR/>
 *
 * 描述：文件处理DAO层<BR/>
 *
 * @author  zc
 * 
 * @see [相关类描述]
 *
 * @since JDK1.7
 *
 * @version  V1.00
 *
 * @date 2017年6月30日下午1:41:37
 */
public interface FileProcessMapper
{
	/**
	 * 功能描述：根据条件查询文件信息
	 *
	 *
	 * @param  [Map<String,Object>] paramMap <详细描述>
	 *
	 * @return [Map<String,Object>] fileMap  <详细描述>
	 * 
	 * @author zhangChao
	 *
	 * @date   2017年6月30日下午1:45:11
	 */
	Map<String,Object> getFileInfoByContidions(Map<String,Object> paramMap);
	
	
	/**
	 * 功能描述：根据条件新增文件信息
	 *
	 *
	 * @param  [Map<String,Object>] paramMap <详细描述>
	 *
	 * @return [Map<String,Object>] fileMap  <详细描述>
	 * 
	 * @author zhangChao
	 *
	 * @date   2017年6月30日下午1:45:11
	 */
	int addFileByInfo(Map<String,Object> paramMap);
	
	
	/**
	 * 功能描述：根据条件删除文件信息
	 *
	 *
	 * @param  [Map<String,Object>] paramMap <详细描述>
	 *
	 * @return [Map<String,Object>] fileMap  <详细描述>
	 * 
	 * @author zhangChao
	 *
	 * @date   2017年6月30日下午1:45:11
	 */
	int deleteFileByInfo(Map<String,Object> paramMap);
	
	
	/**
	 * 功能描述：根据文件信息查询文件ID
	 *
	 * @param  [java.lang.String] fileId <详细描述>
	 *
	 * @return [java.util.Map] fileMap<详细描述>
	 * 
	 * @author zhangChao
	 *
	 * @date   2017年6月30日下午3:15:22
	 */
	Map<String,Object> getFinInfobyId(String fileId);
}
