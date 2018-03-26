package com.javaPro.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.javaPro.DTO.MasterPage.CentreDTO;
import com.javaPro.DTO.MasterPage.RoleDTO;
import com.javaPro.Service.MasterService.MasterService;

@Controller
public class MasterController {
	
	
	@Autowired
	MasterService master_Service;
	
	
	@RequestMapping(value="load_master1",method=RequestMethod.GET)
	public ModelAndView loading(ModelMap modelMap){
		
		Map<String, Object> hsh=new HashMap<String,Object>();
		try {
			//List<CentreDTO> lst=master_Service.findAll();
			//hsh.put("data",lst);
			/*for (CentreDTO centreDTO : lst) {
				centreDTO.getCentre_code();
				centreDTO.getCentre_name();
			}*/
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ModelAndView("form1",hsh);
	}

	
	@RequestMapping(value="saveCentre",method=RequestMethod.POST)
	public ModelAndView saving(@ModelAttribute RoleDTO dto){
		
		try {
			System.out.println(dto.getCentre());
			master_Service.saveOrUpdate(dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ModelAndView("redirect:/load_master1.html");
	}
}
