package s.service.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.stereotype.Service;

import s.service.DBService;
import u.utils.HibernateTemplate;

@Service("dbService")
public class DBServiceImpl implements DBService {

	private HibernateTemplate hibernateTemplate;
	
	public DBServiceImpl(){
		hibernateTemplate = HibernateTemplate.getInstance() ;
	}


	public <T> T getEntityByID(Class<T> c,Serializable id){
		try {  
	        T t = hibernateTemplate.getObjectByID(c,id);
	        return t;  
	      
	    } catch (HibernateException e) {  
	        throw e;  
	    } 
	}

	public void saveOrUpdate(Object o) {
		try {  
			hibernateTemplate.saveOrUpdate(o);
	      
	    } catch (HibernateException e) {  
	        throw e;  
	    } 
	}

	public void delete(Object o) {
		try {  
			hibernateTemplate.delete(o);
	    } catch (HibernateException e) {  
	        throw e;  
	    } 
	}

	public List<?> getListMap(String hql, Object[] params) {
		try {  
	    	List<?> result = hibernateTemplate.queryForListWithHQL(hql,params);
	        return result;
	    } catch (HibernateException e) {  
	        throw e;  
	    } 
	}
	
	public List<?> getOrgTree(int parentorgid) {
		String hql = "select org from Org org where parentorgid = ?";
		Object[] paras = new Object[1];
		paras[0] = parentorgid;
		List<?> list= (List<?>) this.getListMap(hql,paras);
		return list;
	}

	public List<?> getRoalTree() {
		String hql = "from Role";
		Object[] paras = null;
		List<?> list= (List<?>) this.getListMap(hql,paras);
		return list;
	}

	public List<?> getFuncTree() {
		String hql = "from Func";
		Object[] paras = null;
		List<?> list= (List<?>) this.getListMap(hql,paras);
		return list;
	}

}
