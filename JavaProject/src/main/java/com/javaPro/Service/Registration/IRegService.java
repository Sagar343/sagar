package com.javaPro.Service.Registration;

import java.util.List;

import org.springframework.stereotype.Component;

import com.javaPro.DTO.Registration.RegDTO;
import com.javaPro.DTO.Registration.RegDetails;



@Component
public interface IRegService {
	
	public int saveUser(RegDTO dto);
	
	
	public int getLogDetails(String username, String pass);

	public int updatePass(String email);
	
	public String searchEmail(String emailid);


	public List<RegDTO> fetchAll();


	public RegDTO fetchId(String selected);



}
