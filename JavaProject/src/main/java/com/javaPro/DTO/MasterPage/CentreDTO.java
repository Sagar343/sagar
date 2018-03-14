package com.javaPro.DTO.MasterPage;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="shield_centres")

public class CentreDTO {

	
	@Id
	@GenericGenerator( name="incr" ,strategy="increment")
	@GeneratedValue(generator="incr")
	private int sino;
	
	@Column(name="centre_code")
	private Integer centre_code;
	
	@Column(name="centre_name")
	private String centre_name;

	public int getSino() {
		return sino;
	}

	public void setSino(int sino) {
		this.sino = sino;
	}

	public Integer getCentre_code() {
		return centre_code;
	}

	public void setCentre_code(Integer centre_code) {
		this.centre_code = centre_code;
	}

	public String getCentre_name() {
		return centre_name;
	}

	public void setCentre_name(String centre_name) {
		this.centre_name = centre_name;
	}
	
	
}
