package com.javaPro.DAO.Registration;

import java.util.List;

import com.javaPro.DTO.Registration.RegDTO;
import com.javaPro.DTO.Registration.RegDetails;

public interface IRegDAO {
	
	public int saveUser(RegDTO dto);
	
	public int getLogDetails(String username, String pass);

	public int updatePass(String email);

	public String searchEmail(String emailid);

	public List<RegDTO> fetchAll();

	public RegDTO fetchId(String selected);

}
