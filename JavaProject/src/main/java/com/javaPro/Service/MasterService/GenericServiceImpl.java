package com.javaPro.Service.MasterService;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.javaPro.DAO.MasterDAO.GenericDAO;

public class GenericServiceImpl<T,T2 extends GenericDAO<T>> implements GenericService<T> {

	
	@Autowired
	private T2 GenericDao;

	@Override
	public List<T> findAll() throws Exception {
		// TODO Auto-generated method stub
		return GenericDao.findAll();
	}

	@Override
	public void saveOrUpdate(T domain) throws Exception {
		// TODO Auto-generated method stub
		GenericDao.saveOrUpdate(domain);
	}

	@Override
	public void Delete(T domain) throws Exception {
		// TODO Auto-generated method stub
		
		GenericDao.Delete(domain);
	}

	@Override
	public T find(Serializable id) throws Exception {
		// TODO Auto-generated method stub
		return GenericDao.find(id);
	}
	
	
	

}
