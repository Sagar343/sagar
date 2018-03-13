package com.javaPro.Service.Registration;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.javaPro.DAO.Registration.IRegDAO;
import com.javaPro.DTO.Registration.RegDTO;
import com.javaPro.DTO.Registration.RegDetails;

@Component
public class RegServiceImpl implements IRegService {

	
	@Autowired
	SessionFactory factory;
	
	@Autowired
	IRegDAO dao;
	
	

	@Override
	public int saveUser(RegDTO dto) {
		// TODO Auto-generated method stub
		return dao.saveUser(dto);
	}

	@Override
	public int getLogDetails(String username, String pass) {
		// TODO Auto-generated method stub
		return dao.getLogDetails(username, pass);
	}

	@Override
	public int updatePass(String email) {
		// TODO Auto-generated method stub
		return dao.updatePass(email);
	}

	@Override
	public String searchEmail(String emailid) {
		// TODO Auto-generated method stub
		return dao.searchEmail(emailid);
	}

	@Override
	public List<RegDTO> fetchAll() {
		// TODO Auto-generated method stub
		return dao.fetchAll();
	}

	@Override
	public RegDTO fetchId(String selected) {
		// TODO Auto-generated method stub
		return dao.fetchId(selected);
	}
	
	
	
}
