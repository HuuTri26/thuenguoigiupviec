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
@Table(name = "CONTRACT")
public class ContractEntity {
	@Id
	@Column(name = "Id")
	@GeneratedValue
	private Integer id;
	@Column(name = "CustomerId")
	private Integer customerId;
	@Column(name = "MaidId")
	private Integer maidId;
	@Column(name = "Description")
	private String description;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	@Column(name = "CreateAt")
	private Date createAt;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	@Column(name = "StartAt")
	private Date startAt;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	@Column(name = "EndAt")
	private Date endAt;
	
	@Column(name = "EmployeeId")
	private Integer employeeId;
	
	@Column(name = "Status")
	private Integer status;
	//status: (Còn hạn, hết hạn , đã hủy)
	//Trùng bộ maidId , customerId,createAt -> update không hải thêm mới.
	
	
	//Associate:
	
	@OneToOne(mappedBy = "contract", fetch = FetchType.LAZY)
	@JoinColumn(name = "id")
    private String maid;
	
	@OneToOne(mappedBy = "contract", fetch = FetchType.LAZY)
	@JoinColumn(name = "id")
    private String employee;
	
	@OneToOne(mappedBy = "contract", fetch = FetchType.LAZY)
	@JoinColumn(name = "id")
    private String customer;
	
	//Contructor

	public ContractEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public ContractEntity(Integer id, Integer customerId, Integer maidId, String description, Date createAt,
			Date startAt, Date endAt, Integer employeeId, Integer status, String maid, String employee,
			String customer) {
		super();
		this.id = id;
		this.customerId = customerId;
		this.maidId = maidId;
		this.description = description;
		this.createAt = createAt;
		this.startAt = startAt;
		this.endAt = endAt;
		this.employeeId = employeeId;
		this.status = status;
		this.maid = maid;
		this.employee = employee;
		this.customer = customer;
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public Integer getMaidId() {
		return maidId;
	}

	public void setMaidId(Integer maidId) {
		this.maidId = maidId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Date getStartAt() {
		return startAt;
	}

	public void setStartAt(Date startAt) {
		this.startAt = startAt;
	}

	public Date getEndAt() {
		return endAt;
	}

	public void setEndAt(Date endAt) {
		this.endAt = endAt;
	}

	public Integer getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getMaid() {
		return maid;
	}

	public void setMaid(String maid) {
		this.maid = maid;
	}

	public String getEmployee() {
		return employee;
	}

	public void setEmployee(String employee) {
		this.employee = employee;
	}

	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String customer) {
		this.customer = customer;
	}
	

	
	

	

	
	

	
    
}