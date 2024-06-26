package ptithcm.entity;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

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
	
	//Thuộc tính trung gian để dùng để lấy status của ContractEntity và BookingEntity
	@Transient
	private String status;
	
	//Associate:
	
	@OneToOne()
	@JoinColumn(name = "email")
    private AccountEntity account;
	
	@ManyToOne
	@JoinColumn(name = "employeeId")
    private EmployeeEntity employee;
	
	@OneToMany(mappedBy = "maid", fetch = FetchType.LAZY)
	private List<ContractEntity> contracts;

	@OneToMany(mappedBy = "maid", fetch = FetchType.LAZY)
	private List<BookingDetailEntity> bookingDetails;
	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "bookingDetailId")
//	private BookingDetailEntity bookingDetail;
	
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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

	public List<ContractEntity> getContracts() {
		return contracts;
	}

	public void setContracts(List<ContractEntity> contracts) {
		this.contracts = contracts;
	}

	public List<BookingDetailEntity> getBookingDetails() {
		return bookingDetails;
	}

	public void setBookingDetails(List<BookingDetailEntity> bookingDetails) {
		this.bookingDetails = bookingDetails;
	}
    
}