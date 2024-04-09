//package ptithcm.entity;
//
//import java.util.Date;
//import java.util.List;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//import javax.persistence.OneToMany;
//import javax.persistence.OneToOne;
//import javax.persistence.Table;
//import javax.persistence.Temporal;
//import javax.persistence.TemporalType;
//
//import org.springframework.format.annotation.DateTimeFormat;
//
//@Entity
//@Table(name = "MAID")
//public class MaidEntity {
//	@Id
//	@Column(name = "id")
//	@GeneratedValue
//	private Integer id;
//	@Column(name = "Fullname")
//	private String fullName;
//	@Column(name = "Phonenumber")
//	private String phoneNumber;
//	@Column(name = "Address")
//	private String address;
//	@Column(name="Expierience")
//	private Integer expierience;
//	@Column(name = "Email")
//	private String email;
//	@Column(name = "Image")
//	private String image;
//	@Column(name = "Salary")
//	private Double salary;
//	
//	@Temporal(TemporalType.DATE)
//	@DateTimeFormat(pattern = "yyyy-mm-dd")
//	@Column(name = "CreateAt")
//	private Date createAt;
//	
//	@Temporal(TemporalType.DATE)
//	@DateTimeFormat(pattern = "yyyy-mm-dd")
//	@Column(name = "UpdateAt")
//	private Date updateAt;
//	
//	@Column(name = "EmployeeId")
//	private Integer employeeId;
//	
//	@Column(name = "EmploymentType")
//	private Boolean employmentType;
//	
//	
//	//Associate:
//	
//	@OneToMany(mappedBy = "maid", fetch = FetchType.LAZY)
//	@JoinColumn(name = "id")
//    private String account;
//	
//	@OneToOne(mappedBy = "maid", fetch = FetchType.LAZY)
//	@JoinColumn(name = "id")
//    private String employee;
//	
//	@OneToOne(mappedBy = "maid", fetch = FetchType.LAZY)
//	@JoinColumn(name = "id")
//    private String contract;
//	
//	@OneToMany(mappedBy = "maid", fetch = FetchType.LAZY)
//	@JoinColumn(name = "id")
//    private String bookingDetail;
//	
//	//Contructur
//
//	
//	public Integer getId() {
//		return id;
//	}
//
//	public MaidEntity() {
//		super();
//		// TODO Auto-generated constructor stub
//	}
//	
//	
//
//	public MaidEntity(Integer id, String fullName, String phoneNumber, String address, Integer expierience,
//			String email, String image, Double salary, Date createAt, Date updateAt, Integer employeeId,
//			Boolean employmentType, String account, String employee, String contract, String bookingDetail) {
//		super();
//		this.id = id;
//		this.fullName = fullName;
//		this.phoneNumber = phoneNumber;
//		this.address = address;
//		this.expierience = expierience;
//		this.email = email;
//		this.image = image;
//		this.salary = salary;
//		this.createAt = createAt;
//		this.updateAt = updateAt;
//		this.employeeId = employeeId;
//		this.employmentType = employmentType;
//		this.account = account;
//		this.employee = employee;
//		this.contract = contract;
//		this.bookingDetail = bookingDetail;
//	}
//
//	public void setId(Integer id) {
//		this.id = id;
//	}
//
//	public String getFullName() {
//		return fullName;
//	}
//
//	public void setFullName(String fullName) {
//		this.fullName = fullName;
//	}
//
//	public String getPhoneNumber() {
//		return phoneNumber;
//	}
//
//	public void setPhoneNumber(String phoneNumber) {
//		this.phoneNumber = phoneNumber;
//	}
//
//	public String getAddress() {
//		return address;
//	}
//
//	public void setAddress(String address) {
//		this.address = address;
//	}
//
//	public Integer getExpierience() {
//		return expierience;
//	}
//
//	public void setExpierience(Integer expierience) {
//		this.expierience = expierience;
//	}
//
//	public String getEmail() {
//		return email;
//	}
//
//	public void setEmail(String email) {
//		this.email = email;
//	}
//
//	public String getImage() {
//		return image;
//	}
//
//	public void setImage(String image) {
//		this.image = image;
//	}
//
//	public Double getSalary() {
//		return salary;
//	}
//
//	public void setSalary(Double salary) {
//		this.salary = salary;
//	}
//
//	public Date getCreateAt() {
//		return createAt;
//	}
//
//	public void setCreateAt(Date createAt) {
//		this.createAt = createAt;
//	}
//
//	public Date getUpdateAt() {
//		return updateAt;
//	}
//
//	public void setUpdateAt(Date updateAt) {
//		this.updateAt = updateAt;
//	}
//
//	public Integer getEmployeeId() {
//		return employeeId;
//	}
//
//	public void setEmployeeId(Integer employeeId) {
//		this.employeeId = employeeId;
//	}
//
//	public Boolean getEmploymentType() {
//		return employmentType;
//	}
//
//	public void setEmploymentType(Boolean employmentType) {
//		this.employmentType = employmentType;
//	}
//
//	public String getAccount() {
//		return account;
//	}
//
//	public void setAccount(String account) {
//		this.account = account;
//	}
//
//	public String getEmployee() {
//		return employee;
//	}
//
//	public void setEmployee(String employee) {
//		this.employee = employee;
//	}
//
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
//
//	
//	
//
//	
//    
//}