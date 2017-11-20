package com.wh.eas.sys.dao;

import java.util.Map;

public interface ExcelMapper {
    /**
     * 功能描述：根据条件查询文件信息
     *
     *
     * @param  [Map<String,Object>] paramMap <详细描述>
     *
     * @return [Map<String,Object>] fileMap  <详细描述>
     * 
     * @author zhangChao
     *
     * @date   2017年6月30日下午1:45:11
     */
    Map<String,Object> getFileInfoByContidions(Map<String,Object> paramMap);
    
    
    /**
     * 功能描述：根据条件新增文件信息
     *
     *
     * @param  [Map<String,Object>] paramMap <详细描述>
     *
     * @return [Map<String,Object>] fileMap  <详细描述>
     * 
     * @author zhangChao
     *
     * @date   2017年6月30日下午1:45:11
     */
    int addFileByInfo(Map<String,Object> paramMap);
    
    
}
