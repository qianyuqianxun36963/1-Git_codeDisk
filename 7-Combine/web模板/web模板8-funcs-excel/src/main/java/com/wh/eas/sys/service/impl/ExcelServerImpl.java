package com.wh.eas.sys.service.impl;

import javax.annotation.Resource;

import com.wh.eas.sys.dao.ExcelMapper;
import com.wh.eas.sys.service.IExcelService;

public class ExcelServerImpl implements IExcelService{
	
	
	
	/**DAO层注入*/
	@Resource
	private ExcelMapper excelMapper;
}


