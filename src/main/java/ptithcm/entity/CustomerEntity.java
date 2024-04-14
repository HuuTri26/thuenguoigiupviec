package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CUSTOMER")
public class CustomerEntity {
	@Id
	@Column(name = "Id")
	@GeneratedValue
	private Integer id;
	@Column(name = "Fullname")
	private String fullName;
	@Column(name = "Phonenumber")
	private String phoneNumber;
	@Column(name = "Address")
	private String address;
//	@Column(name = "Email")
//	private String email;
	
	@OneToOne()
	@JoinColumn(name = "email")
    private AccountEntity account;
	
//	@OneToMany(mappedBy = "customer", fetch = FetchType.LAZY)
//	@JoinColumn(name = "id")
//    private String booking;
//	
//	@OneToMany(mappedBy = "customer", fetch = FetchType.LAZY)
//	@JoinColumn(name = "id")
//    private String contract;

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

//	public String getEmail() {
//		return email;
//	}
//
//	public void setEmail(String email) {
//		this.email = email;
//	}

	public AccountEntity getAccount() {
		return account;
	}

	public void setAccount(AccountEntity account) {
		this.account = account;
	}
	
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

}
