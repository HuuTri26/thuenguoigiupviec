//package ptithcm.entity;
//
//<<<<<<< HEAD
////public class CustomerEntity {
////
////}
//=======
//import java.util.Date;
//import java.util.List;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.OneToMany;
//import javax.persistence.OneToOne;
//import javax.persistence.Table;
//import javax.persistence.Temporal;
//import javax.persistence.TemporalType;
//
//import org.springframework.format.annotation.DateTimeFormat;
//
//@Entity
//@Table(name = "CUSTOMER")
//public class CustomerEntity {
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
//	@Column(name = "Email")
//	private String email;
//	
//	@OneToMany(mappedBy = "customer", fetch = FetchType.LAZY)
//	@JoinColumn(name = "id")
//    private String account;
//	
//	@OneToMany(mappedBy = "customer", fetch = FetchType.LAZY)
//	@JoinColumn(name = "id")
//    private String booking;
//	
//	@OneToMany(mappedBy = "customer", fetch = FetchType.LAZY)
//	@JoinColumn(name = "id")
//    private String contract;
//
//	
//	public CustomerEntity() {
//		super();
//		// TODO Auto-generated constructor stub
//	}
//	
//	
//
//	public CustomerEntity(Integer id, String fullName, String phoneNumber, String address, String email, String account,
//			String booking, String contract) {
//		super();
//		this.id = id;
//		this.fullName = fullName;
//		this.phoneNumber = phoneNumber;
//		this.address = address;
//		this.email = email;
//		this.account = account;
//		this.booking = booking;
//		this.contract = contract;
//	}
//
//
//
//	public Integer getId() {
//		return id;
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
//	public String getEmail() {
//		return email;
//	}
//
//	public void setEmail(String email) {
//		this.email = email;
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
//	public String getBookingDetail() {
//		return booking;
//	}
//
//	public void setBookingDetail(String bookingDetail) {
//		this.booking = bookingDetail;
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
//	
//    
//}
//>>>>>>> branch 'main' of https://github.com/HuuTri26/thuenguoigiupviec
