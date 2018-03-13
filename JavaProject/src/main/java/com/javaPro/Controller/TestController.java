package com.javaPro.Controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;


import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.javaPro.DTO.Registration.RegDTO;
import com.javaPro.DTO.Registration.RegDetails;
import com.javaPro.Service.Registration.IRegService;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@Autowired
	HttpSession Session=null;
	@Autowired
	private SessionFactory factory;
	
	@Autowired
	IRegService regService;
	
	@RequestMapping(value="home")
	public ModelAndView redirect(){

		return new ModelAndView("home");
	}
	/* --------------Sign Up page loading----------------- */
	@RequestMapping(value="SignUp")
	public ModelAndView redirect_signup(){

		return new ModelAndView("SignUp");
	}
	
	/* ------------loading registration page------------------ */
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String register(@ModelAttribute("sp") RegDTO dto){

		regService.saveUser(dto);
		return "redirect:/SignUp.html";
	}
	
	/* --------------log in page loading---------------- */
	@RequestMapping(value="load_login")
	public ModelAndView  login_loaxd(){
		
		return new ModelAndView("signIn");
	}
	
	/* -------------Log in controller--------------- */
	@RequestMapping(value="login")
	@ResponseBody
	public void login(@RequestParam("email") String username,@RequestParam("password")String password,HttpServletResponse resp) throws IOException{
		int i=0;
		try {
			i = regService.getLogDetails(username, password);
			
			System.out.println("user:--------"+username+"password-----"+password);
		} catch (Exception e) {
			System.err.println("inside the exception");
		}

		ObjectMapper m1=new ObjectMapper();
		String s1=m1.writeValueAsString(i);

		PrintWriter out=resp.getWriter();
		out.print(s1);

	}
	
	/* --------log out controller------------ */
	@RequestMapping(value="/logOut")
	@ResponseBody
	public ModelAndView clearSession(HttpServletRequest request){
		HttpSession session=request.getSession(false);
		SecurityContextHolder.clearContext();
		if(session!=null){
		session.invalidate();
		}
		return new ModelAndView("signIn");
	}
	
	/* ------------forget password page load---------------- */
	@RequestMapping(value="load_forgetpass")
	public ModelAndView load_forget(){
		
		
		return new ModelAndView("ForgotPass");
	}
	
	/* -------------------------------Generating new Password and sending it to mail--------------------------- */
	@RequestMapping(value="generateNewPass")
	@ResponseBody
	public void resetpass(@RequestParam (value="email") String email,HttpServletResponse resp) throws IOException{
		int i=0;
		try{
		 i=regService.updatePass(email);
		System.out.println("entered email id="+email);
		} catch (Exception e) {
			System.err.println("inside the exception");
		}
		ObjectMapper m1=new ObjectMapper();
		String s1=m1.writeValueAsString(i);

		PrintWriter out=resp.getWriter();
		out.print(s1);
		
	}
	
	/* -------------e-mail duplication verification------------------- */
	@RequestMapping(value="findEmail", method=RequestMethod.GET)
	@ResponseBody
	public void searchEmail(@RequestParam(value="email_id") String emailid,HttpServletResponse res) throws Exception{
		
		Map<String, Object> NewConnection=new HashMap<String,Object>();	
		try{
		String eid=regService.searchEmail(emailid);
		
		NewConnection.put("Details", eid);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		ObjectMapper obj=new ObjectMapper();
		
		PrintWriter out=res.getWriter();
		
		out.write(obj.writeValueAsString(NewConnection));
	}
	
	
	@RequestMapping(value="/emplyeeSearch")
	public ModelAndView search()
	{
		List<RegDTO> lst=regService.fetchAll();
		for (RegDTO regDTO : lst) {
			System.out.println(regDTO.getName());
		}
		Map<String, Object> NewConnection=new HashMap<String,Object>();	
		NewConnection.put("allData", lst);
		return new ModelAndView("AddEmployee",NewConnection);
	}
	
	@RequestMapping(value="getData")
		public ModelAndView getdata(@RequestParam String selected, HttpServletRequest request){
		System.out.println("============"+selected);
		RegDTO  lst=regService.fetchId(selected);
		System.out.println(lst.getDomain());
		Map<String, Object> NewConnection=new HashMap<String,Object>();	
		NewConnection.put("indivualData", lst);
		
		return new ModelAndView("AddEmployee",NewConnection);
	}
	
	/* *************dumping XLSX data to HTML*************  */
	@RequestMapping("/readxlsx")	
	public ModelAndView readXlData(){
		String pathname="E:\\XLSX\\test.xlsx";
		
		XSSFWorkbook workbook=null;
		
		
		List<RegDetails> details=null;
		
		try {
			FileInputStream fis=new FileInputStream(new File(pathname));
			
			workbook=new XSSFWorkbook(fis);
			XSSFSheet sheet=workbook.getSheetAt(0);
			int first_row=1;
			
			String s1="" ,s2="" , s3="" ,s4="",s5=""; 
			
			Session sess=factory.openSession();
			Transaction tx=sess.beginTransaction();
			
			details=sess.createQuery("from RegDetails").list();
			
			for (int i = first_row; i <= sheet.getLastRowNum(); i++) {
				
				Row row=sheet.getRow(i);
				for(Cell cell:row){
					if(cell.getColumnIndex()==0){
						Cell c=row.getCell(cell.getColumnIndex());
						s1=c.toString();
					}
					else if(cell.getColumnIndex()==1){
					Cell c1=row.getCell(cell.getColumnIndex());
					s2=c1.toString();
					
					}
					else if(cell.getColumnIndex()==2){
						Cell c2=row.getCell(cell.getColumnIndex());
						s3=c2.toString();
						
					}
					else if(cell.getColumnIndex()==3){
						Cell c3=row.getCell(cell.getColumnIndex());
						s4=c3.toString();
						
					}
					else if(cell.getColumnIndex()==4){
						Cell c4=row.getCell(cell.getColumnIndex());
								s5=c4.toString();
					}
				}
				if(details.size()!=sheet.getLastRowNum()){
					RegDetails regData=new RegDetails();
					regData.setName(s1);
					regData.setEmail_id(s2);
					regData.setEmp_id(s3);
					regData.setPossision(s4);
					regData.setStrart_date(s5);
					sess.save(regData);
				}
				
				System.out.println(s1+"---"+s2+"---"+s3+"--"+s4+"---"+s5);
			}
			tx.commit();
			sess.close();
			fis.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Map<String, Object> hsh = new HashMap<String, Object>();
		hsh.put("deta", details);
		return new ModelAndView("DataTable",hsh);

	}
	
}
