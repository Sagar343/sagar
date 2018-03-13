package com.javaPro.DTO.Registration;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class RegDetails {
	
	@Id
	@GenericGenerator(name="sp" , strategy="increment")
	@GeneratedValue(generator="sp")
	private int id;
	
	private String name;
	
	private String email_id;
	
	private String emp_id;
	
	private String possision;
	
	
	
	
	private String strart_date;

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getPossision() {
		return possision;
	}

	public void setPossision(String possision) {
		this.possision = possision;
	}

	public String getStrart_date() {
		return strart_date;
	}

	public void setStrart_date(String strart_date) {
		this.strart_date = strart_date;
	}

	
}
