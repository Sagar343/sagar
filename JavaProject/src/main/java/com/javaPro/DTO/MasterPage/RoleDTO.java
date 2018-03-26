package com.javaPro.DTO.MasterPage;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="shield_role")
public class RoleDTO {
	
	@Id
	@GenericGenerator(name="incr",strategy="increment")
	@GeneratedValue(generator="incr")
	private int roleId;
	
	private String roleName;

	@OneToOne(targetEntity=CentreDTO.class,cascade=CascadeType.ALL)
	@JoinColumn(name="centreAssign", referencedColumnName="centre_code")

	private CentreDTO centre;

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public CentreDTO getCentre() {
		return centre;
	}

	public void setCentre(CentreDTO centre) {
		this.centre = centre;
	}


}
