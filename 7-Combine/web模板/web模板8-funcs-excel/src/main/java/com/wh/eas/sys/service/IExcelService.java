package com.wh.eas.sys.service;

import java.util.List;
import java.util.Map;


public interface IExcelService {
	List<Map<String,Object>> queryExcelInfos_Export(Map map);
	
	boolean updateExportInfoStatus(Map map);
	
	boolean updateExcelInfoByImport(Map map);
	
	//下面是检查插入值是否存在的通用方法,如 校验性别,checkExist("sex","男");
	public Map checkEmpty(String type,Object info);
	
	//下面是检查插入值是否存在的通用方法,如 校验性别,checkExist("sex","男");
	public Map checkExist(String type,Object info);
	
	//下面是检查插入值是否存在的通用方法,如 校验性别,checkExist("sex","男");
	public Map checkNotExist(String type,Object info);
	
	//下面是检查插入值是否符合格式的通用方法,如 校验qq号,checkReg("qq","152123123");
	public Map checkReg(String type,String info);
}
