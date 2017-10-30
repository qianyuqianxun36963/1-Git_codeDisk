package com.wh.eas.sys.controller;

import java.io.*;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.wh.eas.sys.service.IExcelService;
import com.wh.eas.sys.utils.DateUtils;
import com.wh.eas.sys.utils.ExcelRead;
import com.wh.eas.sys.utils.ExcelView;
import com.wh.eas.sys.utils.FileUploadUtil;
import com.wh.eas.sys.utils.FileUtils;
import com.wh.eas.sys.utils.PropertiesUtil;
import com.wh.eas.sys.utils.StringUtils;
import com.wh.eas.sys.utils.UUIDTool;

@Controller
@RequestMapping("/excel")
public class Controller_ExcelHandler_Import extends Controller_Base
{
	public static Logger logger = Logger.getLogger(Controller_ExcelHandler_Import.class);
	
	/**得到ModelAndView
	 * @return
	 */
	public ModelAndView getModelAndView(){
		return new ModelAndView();
	}
	/**
	 * 下载发票导入模板
	 * @param request
	 * @param response
	 */
	@RequestMapping(value = "/downloadImportTemplate",method = RequestMethod.POST)
	public void downloadImportInvoiceTemplate(HttpServletRequest request,HttpServletResponse response) throws Exception{
         downloadImportTemplate(request,response);
         return;
	}
	
	
	/**
	 * 导入发票信息
	 * @param request
	 * @param file
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/importInvoiceListExcel",method = RequestMethod.POST)
	@ResponseBody
	public Object importInvoiceList(HttpServletRequest request,@RequestParam(value = "file",required = false) MultipartFile file,
			HttpServletResponse response) {
		String rows = "";
		Map<String,Object> map = new HashMap<String,Object>();
		response.setContentType("text/html;charset=UTF-8");
		int totalCount = 0,successCount = 0,failCount = 0;
	
		try{
			String path=request.getSession().getServletContext().getRealPath("upload/file/invoice/");
			String realFileName = "invoiceexcel"+DateUtils.dateToString(new Date(), "yyyyMMddHHmmss");
		    String fileName =  FileUploadUtil.fileUp(file, path, realFileName);
		    //执行读EXCEL操作,读出的数据导入List 1:从第2行开始；0:从第A列开始；0:第0个sheet
		    List<Map<String,String>> importList = (List)ExcelRead.readExcel(path, fileName, 1, 0, 0);
		    if(CollectionUtils.isEmpty(importList)) {
		    	map.put("status", "success");
				map.put("msg", "导入发票信息成功，一共导入"+totalCount+"条，其中成功"+successCount+"条，失败"+failCount+"条");
				return map;
		    }
		    totalCount = importList.size();
		    for(int i = 0;i < importList.size();i++){
		    	Map<String,Object> tempInvoiceInfo = new HashMap<String,Object>();
		    	Map<String,String> tempMap = importList.get(i);
		    	String invoiceId = tempMap.get("content1");//开票编号
		    	String stuName = tempMap.get("content2");//学生姓名
		    	String schoolrollNo = tempMap.get("content3");//学号
		    	String ticketCode = tempMap.get("content4");//票据号
		    	String paymentAmount = tempMap.get("content5");//缴费金额
		    	String realAmount = tempMap.get("content6");//实开金额
		    	String exportBatch = tempMap.get("content7");//导出批次号
		    	String invoiceTime = tempMap.get("content8");//开票时间
		    	if(StringUtils.isEmpty(invoiceId)){
		    		failCount++;
		    		rows += "第"+i+2+"行，开票编号不能为空\n";
		    		continue;
		    	}
		    	
		    	if(StringUtils.isEmpty(ticketCode)){
		    		failCount++;
		    		rows += "第"+i+2+"行，票据号不能为空\n";
		    		continue;
		    	}
		    	
		    	if(StringUtils.isEmpty(realAmount)){
		    		failCount++;
		    		rows += "第"+i+2+"行，实开金额不能为空\n";
		    		continue;
		    	}
		    	
		    	tempInvoiceInfo.put("invoiceId", invoiceId);
		    	tempInvoiceInfo.put("stuName", stuName);
		    	tempInvoiceInfo.put("schoolrollNo", schoolrollNo);
		    	tempInvoiceInfo.put("ticketCode", ticketCode);
		    	tempInvoiceInfo.put("paymentAmount", paymentAmount);
		    	tempInvoiceInfo.put("realAmount", realAmount);
		    	tempInvoiceInfo.put("exportBatch", exportBatch);
		    	tempInvoiceInfo.put("invoiceTime", invoiceTime);
		    	tempInvoiceInfo.put("operatorId", "0-1");
		    	
                if(excelService.updateExcelInfoByImport(tempInvoiceInfo)) {
                	successCount++;
                }else{
                	failCount++;
                	rows += "第"+i+2+"行,开票编号不存在或者已经被删除\n";
                }
		    } 
		    map.put("status", "success");
		    map.put("msg", "导入发票信息成功，一共导入"+totalCount+"条，其中成功"+successCount+"条，失败"+failCount+"条；\n导入结果详情：\n"+rows);
		    return map;
		}catch(Exception e){
			logger.error("导入发票信息失败", e);
			map.put("status", "error");
			map.put("msg", "导入发票信息失败，请确定导入信息正确"+rows);
			return map;
		}
	}
	

	/**业务层注入*/
    @Resource
	private IExcelService excelService;
    
    /**业务层注入*/
    @Resource
	private PropertiesUtil propertiesUtil;
    
    
    
}
