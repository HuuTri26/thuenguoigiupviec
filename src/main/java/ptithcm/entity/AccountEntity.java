package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
	
	@ManyToOne
	@JoinColumn(name = "RoleId")
	private RoleEntity role;
	
	@OneToOne(mappedBy = "account", fetch = FetchType.EAGER)
	private EmployeeEntity employee;
	
	@OneToOne(mappedBy = "account", fetch = FetchType.EAGER)
	private MaidEntity maid;

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

	public EmployeeEntity getEmployee() {
		return employee;
	}

	public void setEmployee(EmployeeEntity employee) {
		this.employee = employee;
	}

	public RoleEntity getRole() {
		return role;
	}

	public void setRole(RoleEntity role) {
		this.role = role;
	}

	public MaidEntity getMaid() {
		return maid;
	}

	public void setMaid(MaidEntity maid) {
		this.maid = maid;
	}
	
	
}
