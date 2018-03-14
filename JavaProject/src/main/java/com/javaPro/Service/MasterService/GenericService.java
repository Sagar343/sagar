package com.javaPro.Service.MasterService;

import java.io.Serializable;
import java.util.List;

public interface GenericService<T> {
	
public List<T> findAll() throws Exception;
	
	public void saveOrUpdate(T domain) throws Exception;
	
	public void Delete(T domain) throws Exception;
	
	public T find(Serializable id) throws Exception;

}
