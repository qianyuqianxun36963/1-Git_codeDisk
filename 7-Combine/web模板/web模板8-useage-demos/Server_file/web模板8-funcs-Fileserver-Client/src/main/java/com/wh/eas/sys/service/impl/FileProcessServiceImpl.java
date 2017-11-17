package com.wh.eas.sys.service.impl;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wh.eas.sys.service.FileProcessService;

import com.wh.eas.sys.dao.FileProcessMapper;


/**
 * 简介：文件资源上传业务处理实现<BR/>
 *
 * 描述：文件资源上传业务处理实现<BR/>
 *
 * @author  zhangChao
 * 
 * @see     [相关类描述]
 *
 * @since   JDK1.7
 *
 * @version  V1.00
 *
 * @date     2017年6月30日下午1:24:31
 */
@Service
public class FileProcessServiceImpl implements FileProcessService
{

	@Override
	public Map<String, Object> getFileNameByInfo(String fileName, String fileSize, String lastModifyTime, String fileUploadType, String uploadUserId)
	{
		Map<String,Object> paramMap = new HashMap<String,Object>();
		
		paramMap.put("fileName", fileName);
		
		paramMap.put("fileSize", fileSize);
		
		paramMap.put("lastModifyTime", lastModifyTime);
		
		paramMap.put("fileUploadType", fileUploadType);
		
		paramMap.put("uploadUserId", uploadUserId);
		
		return this.fileprocessMapper.getFileInfoByContidions(paramMap);
	}

	@Override
	public Boolean deleteFileByInfo(String fileName, String fileSize, String lastModifyTime, String fileUploadType, String uploadUserId)
	{
		Map<String,Object> paramMap = new HashMap<String,Object>();
		
		paramMap.put("fileName", fileName);
		
		paramMap.put("fileSize", fileSize);
		
		paramMap.put("lastModifyTime", lastModifyTime);
		
		paramMap.put("fileUploadType", fileUploadType);
		
		paramMap.put("uploadUserId", uploadUserId);
		
		return this.fileprocessMapper.deleteFileByInfo(paramMap)>0?Boolean.TRUE:Boolean.FALSE;
	}
	

	@Override
	public Boolean addFileByInfo(String fileName, String fileSize, String lastModifyTime, String fileUploadType, String uploadUserId, String newUniqueFileName,String Id)
	{
		Map<String,Object> paramMap = new HashMap<String,Object>();
		
		paramMap.put("fileName", fileName);
		
		paramMap.put("fileSize", fileSize);
		
		paramMap.put("lastModifyTime", lastModifyTime);
		
		paramMap.put("fileUploadType", fileUploadType);
		
		paramMap.put("uploadUserId", uploadUserId);
		
		paramMap.put("newUniqueFileName", newUniqueFileName);
		
		paramMap.put("Id", Id);
		
		return this.fileprocessMapper.addFileByInfo(paramMap)>0?Boolean.TRUE:Boolean.FALSE;
	}
	
	
	@Override
	public Map<String, Object> getFileInfoById(String fileId)
	{
		return this.fileprocessMapper.getFinInfobyId(fileId);
	}
	
	/**DAO层注入*/
	@Resource
	private FileProcessMapper fileprocessMapper;

}
