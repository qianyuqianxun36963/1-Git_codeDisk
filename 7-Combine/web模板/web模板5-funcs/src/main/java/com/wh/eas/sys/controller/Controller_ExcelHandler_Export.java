package com.wh.eas.sys.controller;

import java.util.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wh.eas.sys.service.IExcelService;
import com.wh.eas.sys.utils.DateUtils;
import com.wh.eas.sys.utils.ExcelView;
import com.wh.eas.sys.utils.PropertiesUtil;

@Controller
@RequestMapping("/excel")
public class Controller_ExcelHandler_Export extends Controller_Base
{
    public static Logger logger = Logger.getLogger(Controller_ExcelHandler_Export.class);
    
    @RequestMapping("/export/modelAndView")
    public ModelAndView exportExcel_modelAndView(HttpServletRequest request,HttpServletResponse response) {
        ModelAndView mv = this.getModelAndView();
        try{
            Map<String,Object> paramMap = new HashMap<String,Object>();
            paramMap.put("userId", "0-1");//操作人ID
            paramMap.put("pointId", request.getParameter("pointId"));
            paramMap.put("exportStatus", request.getParameter("exportStatus"));
            paramMap.put("exportBatch", request.getParameter("exportBatch"));
            paramMap.put("stuName", request.getParameter("stuName"));
            paramMap.put("schoolrollNo",request.getParameter("schoolrollNo"));
            paramMap.put("invoiceStarttime", request.getParameter("invoiceStarttime"));
            paramMap.put("invoiceEndtime", request.getParameter("invoiceEndtime"));
            List<Map<String,Object>> invoiceInfoList = excelService.queryExcelInfos_Export(paramMap);
            List<String> titles = new ArrayList<String>();
            titles.add("开票编号");  //1
            titles.add("学生姓名");  //2
            titles.add("学号");      //3
            titles.add("教学点");    //4
            titles.add("教学点代码");//5
            titles.add("学分费");    //6
            titles.add("考试费");    //7
            titles.add("总金额");    //8
            titles.add("导出状态");  //9
            titles.add("导出批次");  //10
            titles.add("票据号");    //11
            titles.add("实开金额");  //12
            
            Map<String,Object> dataMap = new HashMap<String,Object>();
            dataMap.put("titles", titles);
            List<Map<String,Object>> contentList = new ArrayList<Map<String,Object>>();
            if(invoiceInfoList != null){
                String exportBatch = DateUtils.dateToString(new Date(), "yyyyMMddHHmmss");
                for(Map<String,Object> invoiceInfoTemp : invoiceInfoList) {
                    Map<String,Object> content = new HashMap<String,Object>();
                    //更新导出状态和更新导出批次
                    if((int)invoiceInfoTemp.get("hasExport") == 0) {
                        invoiceInfoTemp.put("exportBatch",exportBatch);
                        invoiceInfoTemp.put("hasExport",1);
                        invoiceInfoTemp.put("operatorId", "0-1");
                        if(!excelService.updateExportInfoStatus(invoiceInfoTemp)){
                            continue;
                        }
                    }
                    //拼接导出excel字段
                    content.put("content1", invoiceInfoTemp.get("invoiceId"));
                    content.put("content2", invoiceInfoTemp.get("stuName"));
                    content.put("content3", invoiceInfoTemp.get("schoolrollNo"));
                    content.put("content4", invoiceInfoTemp.get("pointName"));
                    content.put("content5", invoiceInfoTemp.get("pointCode"));
                    content.put("content6", invoiceInfoTemp.get("scoreFee"));
                    content.put("content7", invoiceInfoTemp.get("examFee"));
                    content.put("content8", invoiceInfoTemp.get("paymentAmount"));
                    content.put("content9", invoiceInfoTemp.get("hasExport"));
                    content.put("content10", invoiceInfoTemp.get("exportBatch"));
                    content.put("content11", invoiceInfoTemp.get("ticketCode"));
                    content.put("content12", invoiceInfoTemp.get("paymentAmount"));
                    contentList.add(content);
                }
            }
            dataMap.put("contentList", contentList);
            //设置导出文件名称
            dataMap.put("fileName", "开票信息列表");
            ExcelView ev = new ExcelView();
            mv = new ModelAndView(ev,dataMap);
        }catch(Exception e){
            logger.error(e.toString(), e);
        }
        
        return mv;
    }
    
    /**业务层注入*/
    @Resource
    private IExcelService excelService;
    
    /**业务层注入*/
    @Resource
    private PropertiesUtil propertiesUtil;
    
    
    
}
