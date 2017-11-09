package com.wh.eas.sys.controller;

import java.io.File;
import java.net.URLDecoder;

import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wh.eas.sys.utils.FileUtils;

@Controller
@RequestMapping("/Base")
public abstract class Controller_Base {
    public static Logger logger = Logger.getLogger(Controller_Base.class);
    

    /**得到ModelAndView
     * @return
     */
    public ModelAndView getModelAndView(){
        return new ModelAndView();
    }
    
    /**
     * 下载导入模板
     * @param request
     * @param response
     */
    public void downloadImportTemplate(HttpServletRequest request,HttpServletResponse response) throws Exception{
        try{
            String fileNames = URLDecoder.decode(request.getParameter("fileName"), "UTF-8");
            String path = request.getSession().getServletContext().getRealPath("template/");
            String templateFilePath = path + File.separator+fileNames;
            File tpFile = new File(templateFilePath.replace("\\", "//"));
            FileUtils.downloadFile(tpFile, fileNames, response);
        } catch(Exception e){
            logger.error("下载模板失败",e);
            throw new Exception("下载模板失败");
        }
    }
}
