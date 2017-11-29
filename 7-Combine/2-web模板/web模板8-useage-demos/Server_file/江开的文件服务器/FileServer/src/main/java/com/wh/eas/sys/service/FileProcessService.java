package com.wh.eas.sys.service;

import java.util.Map;

/**
 * 简介：文件资源上传业务处理<BR/>
 * 
 * 描述：文件资源上传业务处理<BR/>
 * 
 * @author zhangChao
 * 
 * @see [相关类描述]
 * 
 * @since JDK1.7
 * 
 * @version V1.00
 * 
 * @date 2017年6月30日下午1:24:31
 */
public interface FileProcessService {
	/**
	 * 功能描述：文件上传唯一性校验
	 * 
	 * @param [java.lang.Stirng] fileName <文件名称>
	 * 
	 * @param [java.lang.Stirng] fileSize<文件大小>
	 * 
	 * @param [java.lang.Stirng] lastModifyTime <文件最后修改时间>
	 * 
	 * @param [java.lang.Stirng] fileUploadType <文件上传类型>
	 * 
	 * @param [java.lang.Stirng] uploadUserId <文件上传者Id>
	 * 
	 * @return [java.lang.Stirng] 返回值 <详细描述>
	 * 
	 * @author zhangChao
	 * 
	 * @date 2017年6月30日下午1:30:39
	 */
	Map<String, Object> getFileNameByInfo(String fileName, String fileSize,
			String lastModifyTime, String fileUploadType, String uploadUserId);

	/**
	 * 功能描述：根据条件删除文件信息
	 * 
	 * @param [java.lang.Stirng] fileName <文件名称>
	 * 
	 * @param [java.lang.Stirng] fileSize<文件大小>
	 * 
	 * @param [java.lang.Stirng] lastModifyTime <文件最后修改时间>
	 * 
	 * @param [java.lang.Stirng] fileUploadType <文件上传类型>
	 * 
	 * @param [java.lang.Stirng] uploadUserId <文件上传者Id>
	 * 
	 * @return [java.lang.Stirng] 返回值 <详细描述>
	 * 
	 * @author zhangChao
	 * 
	 * @date 2017年6月30日下午1:30:39
	 */
	Boolean deleteFileByInfo(String fileName, String fileSize,
			String lastModifyTime, String fileUploadType, String uploadUserId);

	/**
	 * 功能描述：根据条件新增文件信息
	 * 
	 * @param [java.lang.Stirng] fileName <文件名称>
	 * 
	 * @param [java.lang.Stirng] fileSize<文件大小>
	 * 
	 * @param [java.lang.Stirng] lastModifyTime <文件最后修改时间>
	 * 
	 * @param [java.lang.Stirng] fileUploadType <文件上传类型>
	 * 
	 * @param [java.lang.Stirng] uploadUserId <文件上传者Id>
	 * 
	 * @param [java.lang.Stirng] newUniqueFileName <新生成的唯一文件名称包含后缀>
	 * 
	 * @param [java.lang.Stirng] Id <新生成的唯一文件名称包含后缀>
	 * 
	 * @return [java.lang.Stirng] 返回值 <详细描述>
	 * 
	 * @author zhangChao
	 * 
	 * @date 2017年6月30日下午1:30:39
	 */
	Boolean addFileByInfo(String fileName, String fileSize,
			String lastModifyTime, String fileUploadType, String uploadUserId,
			String newUniqueFileName, String id);

	/**
	 * 功能描述：根据文件ID查找文件信息
	 * 
	 * 
	 * @param [java.lang.String] fileId <详细描述>
	 * 
	 * @return [java.util.Map] 文件信息 <详细描述>
	 * 
	 * @author zhangChao
	 * 
	 * @date 2017年6月30日下午3:08:11
	 */
	Map<String, Object> getFileInfoById(String fileId);
}
