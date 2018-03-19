package com.javaPro.DAO.MasterDAO;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
@SuppressWarnings("unchecked")
public abstract class GenericDAOImpl<T> extends HibernateDaoSupport 
						  implements GenericDAO<T> {

	
	@Autowired
	SessionFactory sessionfactory;
	
	private final Class<T> entityClass;

	
	public GenericDAOImpl() {
		this.entityClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass())
				.getActualTypeArguments()[0];
	}
	
	@Autowired
	public void setSession(SessionFactory sessionFactory){
		this.setSessionFactory(sessionFactory);
	}
	
	
	@Override
	public List<T> findAll() throws Exception {
		// TODO Auto-generated method stub
		Session session=getHibernateTemplate().getSessionFactory().openSession();
		List<T> list=session.createQuery("from " +entityClass.getName()).list();
		session.close();
		return list;
	}

	@Override
	public void saveOrUpdate(T domain) throws Exception {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tx=session.beginTransaction();
		session.saveOrUpdate(domain);
		tx.commit();
		session.close();
	}

	@Override
	public void Delete(T domain) throws Exception {
		// TODO Auto-generated method stub
		Session session=sessionfactory.openSession();
		Transaction tx=session.beginTransaction();
		session.delete(domain);
		tx.commit();
		session.close();
	}

	@Override
	public T find(Serializable id) throws Exception {
		Session session=sessionfactory.openSession();
		T d=session.get(entityClass, id);
		return d;
	}

	
	
}
