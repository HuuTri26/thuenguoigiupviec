package ptithcm.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
@Table(name = "EMPLOYEE")
public class EmployeeEntity {
	
	@Id
	@Column(name = "Id")
	@GeneratedValue
	private Integer id;
	
	@Column(name = "FullName")
	private String fullName;
	
	@Column(name = "PhoneNumber")
	private String phoneNumber;
	
	@Column(name = "Address")
	private String address;
	
	@Column(name = "Image")
	private String image;
	
	@OneToOne
	@JoinColumn(name = "email")
	private AccountEntity account;
	
	@OneToMany(mappedBy = "employee", fetch = FetchType.LAZY)
	private List<MaidEntity> maids;
	
	@OneToMany(mappedBy = "employee")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<BookingEntity> bookings;
	
	@OneToMany(mappedBy = "employee")
	@LazyCollection(LazyCollectionOption.FALSE)
	private List<ContractEntity> contracts;

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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public AccountEntity getAccount() {
		return account;
	}

	public void setAccount(AccountEntity account) {
		this.account = account;
	}

	public List<MaidEntity> getMaids() {
		return maids;
	}

	public void setMaids(List<MaidEntity> maids) {
		this.maids = maids;
	}

	public List<BookingEntity> getBookings() {
		return bookings;
	}

	public void setBookings(List<BookingEntity> bookings) {
		this.bookings = bookings;
	}
	
	
}
