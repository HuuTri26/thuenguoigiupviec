package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Employee")
public class EmployeeEntity {
	
	@Id
	@Column(name = "Id")
	private int iD;
	
	@Column(name = "FullName")
	private String fullName;
	
	@Column(name = "PhoneNumber")
	private String phoneNumber;
	
	@Column(name = "Address")
	private String address;
	
	@Column(name = "Image")
	private String image;
	
	@Column(name = "Email")
	private String email;
	
	@OneToOne(mappedBy = "employee")
	private AccountEntity account;
	
	public EmployeeEntity() {
		super();
	}

	public EmployeeEntity(int iD, String fullName, String phoneNumber, String address, String image, String email) {
		super();
		this.iD = iD;
		this.fullName = fullName;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.image = image;
		this.email = email;
	}

	public int getiD() {
		return iD;
	}

	public void setiD(int iD) {
		this.iD = iD;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public AccountEntity getAccount() {
		return account;
	}

	public void setAccount(AccountEntity account) {
		this.account = account;
	}
	
}
