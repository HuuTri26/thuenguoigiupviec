package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ACCOUNT")
public class AccountEntity {
	@Id
	@Column(name = "Email")
	private String email;
	
	@Column(name = "Password")
	private String password;
	
	@Column(name = "Status")
	private Boolean status;
	
	private int roleID;
	
	@ManyToOne
	@JoinColumn(name = "RoleId")
	private RoleEntity roles;
	
	@OneToOne
	@JoinColumn(name = "Email")
	private EmployeeEntity employee;
	
	public AccountEntity() {
		super();
	}

	public AccountEntity(String email, String password, Boolean status, int roleID) {
		super();
		this.email = email;
		this.password = password;
		this.status = status;
		this.roleID = roleID;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

	public EmployeeEntity getEmployee() {
		return employee;
	}

	public void setEmployee(EmployeeEntity employee) {
		this.employee = employee;
	}

	public RoleEntity getRole() {
		return roles;
	}

	public void setRole(RoleEntity role) {
		this.roles = role;
	}
	
}
