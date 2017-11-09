package com.wh.eas.sys.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class Controller_Common extends Controller_Base{
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
     * 下载发票导入模板
     * @param request
     * @param response
     */
    @RequestMapping(value = "/downloadImportTemplate",method = RequestMethod.GET)
    public void downloadImportInvoiceTemplateGET(HttpServletRequest request,HttpServletResponse response) throws Exception{
         downloadImportTemplate(request,response);
         return;
    }
}
