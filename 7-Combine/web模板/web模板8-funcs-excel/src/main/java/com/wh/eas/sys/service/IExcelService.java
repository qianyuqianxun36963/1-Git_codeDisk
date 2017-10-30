package com.wh.eas.sys.service;

import java.util.List;
import java.util.Map;

public interface IExcelService {
	List<Map<String,Object>> queryExcelInfos_Export(Map map);
	
	boolean updateExportInfoStatus(Map map);
	
	boolean updateExcelInfoByImport(Map map);
}
