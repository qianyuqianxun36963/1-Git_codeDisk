package com.wh.eas.sys.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.wh.eas.sys.dao.ExcelMapper;
import com.wh.eas.sys.service.IExcelService;

public class ExcelServerImpl implements IExcelService{
	
	/**DAO层注入*/
	@Resource
	private ExcelMapper excelMapper;

	@Override
	public List<Map<String, Object>> queryExcelInfos_Export(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateExportInfoStatus(Map map) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateExcelInfoByImport(Map map) {
		// TODO Auto-generated method stub
		return false;
	}
}


