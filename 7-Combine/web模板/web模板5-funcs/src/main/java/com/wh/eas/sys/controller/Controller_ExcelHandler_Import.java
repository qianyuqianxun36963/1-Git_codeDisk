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
     * 导入发票信息
     * @param request
     * @param file
     * @param response
     * @return
     */
    @RequestMapping(value="/import/importListExcel",method = RequestMethod.POST)
    @ResponseBody
    public Object importInvoiceList(HttpServletRequest request,@RequestParam(value = "file",required = false) MultipartFile file,
            HttpServletResponse response) {
        Map<String,Object> map = new HashMap<String,Object>();
        response.setContentType("text/html;charset=UTF-8");
        int totalCount = 0,successCount = 0,failCount = 0;
    
        List errorRows = new ArrayList();
        
        try{
            String path=request.getSession().getServletContext().getRealPath("upload/file/invoice/");
            String realFileName = "myexcel"+DateUtils.dateToString(new Date(), "yyyyMMddHHmmss");
            String fileName =  FileUploadUtil.fileUp(file, path, realFileName);
            
            //这里定义excel的标签栏，记得顺序保持一致！
            String[] titles = {"name","age","sex","birthday","qq"};
            Map titlesOrder = new HashMap();
            for(int i=0;i<titles.length;i++) titlesOrder.put(titles[i], i);
            
            //执行读EXCEL操作,读出的数据导入List 1:从第2行开始；0:从第A列开始；0:第0个sheet
            List<Map<String,String>> importList = (List)ExcelRead.readExcel(path, fileName, 1, 0, 0, titles);
            
            if(CollectionUtils.isEmpty(importList)) {
                map.put("status", "success");
                map.put("msg", "导入发票信息成功，一共导入"+totalCount+"条，其中成功"+successCount+"条，失败"+failCount+"条");
                return map;
            }
            totalCount = importList.size();
            
            StringBuffer errorRow = new StringBuffer();
            
            for(int i = 0;i < importList.size();i++){
                Map<String,String> tempMap = importList.get(i);
                
                int baseRow = 2;
                
                String[] neadCheckEmptyFields = {"name"};
                for(String s : neadCheckEmptyFields){
                    if(!(boolean)(excelService.checkEmpty(s,tempMap.get(s)).get("result"))){errorRow.append("第"+i+baseRow+"行" + "第"+titlesOrder.get(s)+"列" + (excelService.checkEmpty(s,tempMap.get(s)).get("reason")));}
                }
                
                String[] neadCheckExistFields = {"name"};
                for(String s : neadCheckExistFields){
                    if(!(boolean)(excelService.checkEmpty(s,tempMap.get(s)).get("result"))){errorRow.append("第"+i+baseRow+"行" + "第"+titlesOrder.get(s)+"列" + (excelService.checkEmpty(s,tempMap.get(s)).get("reason")));}
                }
                
                String[] neadCheckNotExistFields = {"name"};
                for(String s : neadCheckNotExistFields){
                    if(!(boolean)(excelService.checkEmpty(s,tempMap.get(s)).get("result"))){errorRow.append("第"+i+baseRow+"行" + "第"+titlesOrder.get(s)+"列" + (excelService.checkEmpty(s,tempMap.get(s)).get("reason")));}
                }
                
                String[] neadCheckRegFields = {"name"};
                for(String s : neadCheckRegFields){
                    if(!(boolean)(excelService.checkEmpty(s,tempMap.get(s)).get("result"))){errorRow.append("第"+i+baseRow+"行" + "第"+titlesOrder.get(s)+"列" + (excelService.checkEmpty(s,tempMap.get(s)).get("reason")));}
                }
                
                errorRows.add(errorRow.toString());
                
                if(excelService.updateExcelInfoByImport(tempMap)) {
                    successCount++;
                }else{
                    failCount++;
                    errorRow.append("第"+i+2+"行,开票编号不存在或者已经被删除\n");
                }
            } 
            map.put("status", "success");
            map.put("msg", "导入发票信息成功，一共导入"+totalCount+"条，其中成功"+successCount+"条，失败"+failCount+"条；\n导入结果详情：\n"+errorRows);
            return map;
        }catch(Exception e){
            logger.error("导入发票信息失败", e);
            map.put("status", "error");
            map.put("msg", "导入发票信息失败，请确定导入信息正确"+errorRows);
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
