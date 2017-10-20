package u.utils;

import java.io.Serializable;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;


public class HibernateTemplate {
	
	private static HibernateTemplate hibernateTemplate = null;

	public static HibernateTemplate getInstance() {
		if(hibernateTemplate == null)
			return new HibernateTemplate();
		else return hibernateTemplate;
	}

	public void saveOrUpdate(Object obj) {

		Session session = null;
		Transaction tx = null;
		try {
			session = HibernateUtil.getSession();
			tx = session.beginTransaction();
			session.saveOrUpdate(obj);
			tx.commit();
		} catch (Exception e) {

			HibernateUtil.rollbackTx(tx);

		} finally {
			HibernateUtil.closeSession(session);
		}

	}

	public void delete(Object obj) {
		Session session = null;
		Transaction tx = null;
		try {
			session = HibernateUtil.getSession();
			tx = session.beginTransaction();
			session.delete(obj);
			tx.commit();
		} catch (Exception e) {

			HibernateUtil.rollbackTx(tx);

		} finally {
			HibernateUtil.closeSession(session);
		}

	}

	public Object execute(HibernateCallback<?> callback) {
		Session session = null;
		Object result = null;
		Transaction tx = null;
		try {
			session = HibernateUtil.getSession();
			tx = session.beginTransaction();
			result = callback.doInHibernate(session);
			tx.commit();
		} catch (Exception e) {
			HibernateUtil.rollbackTx(tx);
			e.printStackTrace();
		} finally {
			HibernateUtil.closeSession(session);
		}

		return result;
	}
	

	public Object get(Class<?> type, Serializable id) {
		Session session = null;
		Object result = null;
		try {
			session = HibernateUtil.getSession();
			result = session.get(type, id);

		} catch (Exception e) {
		} finally {
			HibernateUtil.closeSession(session);
		}
		return result;
	}
	
	public <T> T getObjectByID(Class<T> c,Serializable id) {
		Session s = null;  
        
        try {  
            s = HibernateUtil.getSession();  
			T t = s.get(c, id);  
            return t;  
        } catch (HibernateException e) {  
            throw e;  
        } finally {  
            if (s != null)  
                s.close();  
        } 
	}

	// hql
	public List<?> queryForListWithHQL(String hql, Object[] params) {
		return queryForListWithHQL(hql, params, 0, 0);
	}

	public List<?> queryForListWithHQL(String hql, Object[] params,
			int firstResult, int maxResults) {
		Session session = null;
		Query query = null;
		List<?> result = null;

		try {
			session = HibernateUtil.getSession();
			query = session.createQuery(hql);
			initParams(query, params);
			if (firstResult >= 0 && maxResults > 0) {
				query.setFirstResult(firstResult).setMaxResults(maxResults);
			}
			result = query.list();
		} catch (Exception e) {
		} finally {
			HibernateUtil.closeSession(session);
		}
		return result;
	}

	
	
	protected void initParams(Query query, Object[] params) {
		if (params != null && params.length > 0) {
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}
		}
	}

	public Object queryForObjectWithHQL(String hql, Object[] params) {
		Session session = null;
		Query query = null;
		Object result = null;

		try {
			session = HibernateUtil.getSession();
			query = session.createQuery(hql);
			initParams(query, params);
			result = query.uniqueResult();
		} catch (Exception e) {
		} finally {
			HibernateUtil.closeSession(session);
		}
		return result;
	}

	public int excuteUpdateWithHQL(String hql, Object[] params) {
		Session session = null;
		Transaction tx = null;
		Query query = null;
		int row = 0;

		try {
			session = HibernateUtil.getSession();
			tx = session.beginTransaction();
			query = session.createQuery(hql);
			initParams(query, params);

			row = query.executeUpdate();
			tx.commit();
		} catch (Exception e) {
			HibernateUtil.rollbackTx(tx);
		} finally {
			HibernateUtil.closeSession(session);
		}

		return row;
	}

	// sql
	public List<?> queryForListWithSQL(String sql, Object[] params) {
		return queryForListWithSQL(sql, params, 0, 0);
	}

	public List<?> queryForListWithSQL(String sql, Object[] params,
			int firstResult, int maxResults) {
		Session session = null;
		Query query = null;
		List<?> result = null;

		try {
			session = HibernateUtil.getSession();
			query = session.createSQLQuery(sql);
			initParams(query, params);
			if (firstResult >= 0 && maxResults > 0) {
				query.setFirstResult(firstResult).setMaxResults(maxResults);
			}
			result = query.list();
		} catch (Exception e) {
		} finally {
			HibernateUtil.closeSession(session);
		}
		return result;
	}

	public Object queryForObjectWithSQL(String sql, Object[] params) {
		Session session = null;
		Query query = null;
		Object result = null;

		try {
			session = HibernateUtil.getSession();
			query = session.createQuery(sql);
			initParams(query, params);
			result = query.uniqueResult();
		} catch (Exception e) {
		} finally {
			HibernateUtil.closeSession(session);
		}
		return result;
	}

	public int excuteUpdateWithSQL(String sql, Object[] params) {
		Session session = null;
		Transaction tx = null;
		Query query = null;
		int row = 0;

		try {
			session = HibernateUtil.getSession();
			tx = session.beginTransaction();
			query = session.createSQLQuery(sql);
			initParams(query, params);
			row = query.executeUpdate();
			tx.commit();
		} catch (Exception e) {
			HibernateUtil.rollbackTx(tx);
		} finally {
			HibernateUtil.closeSession(session);
		}
		return row;
	}

}
