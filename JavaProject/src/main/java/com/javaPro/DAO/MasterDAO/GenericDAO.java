package com.javaPro.DAO.MasterDAO;

import java.io.Serializable;
import java.util.*;

import org.springframework.stereotype.Component;


public interface GenericDAO<T> {
	
	public List<T> findAll() throws Exception;
	
	public void saveOrUpdate(T domain) throws Exception;
	
	public void Delete(T domain) throws Exception;
	
	public T find(Serializable id) throws Exception;
	
	

}
