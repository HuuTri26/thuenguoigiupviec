package ptithcm.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
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
@Table(name = "BOOKING")
public class BookingEntity {
	@Id
	@GeneratedValue
	@Column(name = "Id")
	private Integer id;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "StartTime")
	private Date startTime;
	
	@Column(name = "Address")
	private String bookingAddress;
	
	@Column(name = "Note")
	private String note;
	
	@Column(name = "Price")
	private Double price;
	
	@Column(name = "BookingStatus", nullable = false, columnDefinition = "INT DEFAULT 0")
	private Integer bookingStatus;
	
	@Column(name = "PaymentStatus", nullable = false, columnDefinition = "INT DEFAULT 0")
	private Integer paymentStatus;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "CreateAt", nullable = false, updatable = false)
	private Date createAt;
	
	@ManyToOne
	@JoinColumn(name = "customerId", nullable = false)
	private CustomerEntity customer;
	
	@OneToOne
	@JoinColumn(name = "serviceId", nullable = false)
	private ServiceEntity service;
	
	@ManyToOne
	@JoinColumn(name = "employeeId")
	private EmployeeEntity employee;
	
	@OneToMany(mappedBy = "booking", fetch = FetchType.LAZY)
	private List<BookingDetailEntity> bookingDetails;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public String getBookingAddress() {
		return bookingAddress;
	}

	public void setBookingAddress(String bookingAddress) {
		this.bookingAddress = bookingAddress;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getBookingStatus() {
		return bookingStatus;
	}

	public void setBookingStatus(Integer bookingStatus) {
		this.bookingStatus = bookingStatus;
	}

	public Integer getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(Integer paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public CustomerEntity getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerEntity customer) {
		this.customer = customer;
	}

	public ServiceEntity getService() {
		return service;
	}

	public void setService(ServiceEntity service) {
		this.service = service;
	}

	public EmployeeEntity getEmployee() {
		return employee;
	}

	public void setEmployee(EmployeeEntity employee) {
		this.employee = employee;
	}
	
}
