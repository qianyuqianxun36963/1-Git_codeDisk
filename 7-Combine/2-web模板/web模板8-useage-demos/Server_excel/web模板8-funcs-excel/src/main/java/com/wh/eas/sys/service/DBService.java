package com.wh.eas.sys.service;

import java.io.Serializable;
import java.util.List;

public interface DBService {
    <T> T getEntityByID(Class<T> c,Serializable id);
    void saveOrUpdate(Object o);
    void delete(Object o);
    List<?> getListMap(String sql,Object[] params);
    
    List<?> getOrgTree(int parentOrgid);
    List<?> getRoalTree();
    List<?> getFuncTree();
}
