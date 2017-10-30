package com.wh.eas.sys.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wh.eas.sys.dao.ExcelMapper;
import com.wh.eas.sys.service.IExcelService;

@Service
public class ExcelServerImpl implements IExcelService{
	
	@Override
	public List<Map<String, Object>> queryExcelInfos_Export(Map map) {
		return null;
	}

	@Override
	public boolean updateExportInfoStatus(Map map) {
		return false;
	}

	@Override
	public boolean updateExcelInfoByImport(Map map) {
		return false;
	}
	
	/**DAO层注入*/
	@Resource
	private ExcelMapper excelMapper;
}


