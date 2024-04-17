package ptithcm.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "MAID")
public class MaidEntity {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(name = "Fullname")
	private String fullName;
	@Column(name = "PhoneNumber")
	private String phoneNumber;
	@Column(name = "Address")
	private String address;
	@Column(name= "Experience")
	private Integer experience;
	@Column(name = "Image")
	private String image;
	@Column(name = "Salary")
	private Double salary;
//	@Column(name = "Email")
//	private String email;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	@Column(name = "CreateAt")
	private Date createAt;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	@Column(name = "UpdateAt")
	private Date updateAt;
	
	@Column(name = "EmploymentType")
	private Boolean employmentType;
	
	//Associate:
	
	@OneToOne()
	@JoinColumn(name = "email")
    private AccountEntity account;
	
	@ManyToOne
	@JoinColumn(name = "employeeId")
    private EmployeeEntity employee;
	
//	@OneToOne(mappedBy = "maid", fetch = FetchType.LAZY)
//	@JoinColumn(name = "id")
//    private String contract;
//	
//	@OneToMany(mappedBy = "maid", fetch = FetchType.LAZY)
//	@JoinColumn(name = "id")
//    private String bookingDetail;
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
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

	public Integer getExperience() {
		return experience;
	}

	public void setExperience(Integer experience) {
		this.experience = experience;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

//	public String getEmail() {
//		return email;
//	}
//
//	public void setEmail(String email) {
//		this.email = email;
//	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Date getUpdateAt() {
		return updateAt;
	}

	public void setUpdateAt(Date updateAt) {
		this.updateAt = updateAt;
	}

	public Boolean getEmploymentType() {
		return employmentType;
	}

	public void setEmploymentType(Boolean employmentType) {
		this.employmentType = employmentType;
	}

	public AccountEntity getAccount() {
		return account;
	}

	public void setAccount(AccountEntity account) {
		this.account = account;
	}

	public EmployeeEntity getEmployee() {
		return employee;
	}

	public void setEmployee(EmployeeEntity employee) {
		this.employee = employee;
	}

//	public String getContract() {
//		return contract;
//	}
//
//	public void setContract(String contract) {
//		this.contract = contract;
//	}
//
//	public String getBookingDetail() {
//		return bookingDetail;
//	}
//
//	public void setBookingDetail(String bookingDetail) {
//		this.bookingDetail = bookingDetail;
//	}

	
	

	
    
}