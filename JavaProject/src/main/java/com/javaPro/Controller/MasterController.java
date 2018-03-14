package com.javaPro.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.javaPro.DTO.MasterPage.CentreDTO;
import com.javaPro.Service.MasterService.MasterService;

@Controller
public class MasterController {
	
	
	@Autowired
	MasterService master_Service;
	
	
	@RequestMapping(value="load_master1",method=RequestMethod.GET)
	public String loading(ModelMap modelMap){
		
		
		
		return "form1";
	}

	
	@RequestMapping(value="saveCentre",method=RequestMethod.POST)
	public ModelAndView saving(@ModelAttribute CentreDTO dto){
		
		try {
			master_Service.saveOrUpdate(dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ModelAndView("redirect:/load_master1.html");
	}
}
