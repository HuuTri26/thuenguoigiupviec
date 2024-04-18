package ptithcm.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
@Table(name = "SERVICE")
public class ServiceEntity {
	@Id
	@Column(name = "Id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name = "Name")
	private String name;
	
	@Column(name = "Time")
	private Integer time;
	
	@Column(name = "Description")
	private String description;
	
	@Column(name = "Image")
	private String image;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	@Column(name = "CreateAt")
	private Date createAt;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	@Column(name = "UpdateAt")
	private Date updateAt;
	
	@Column(name = "Status")
	private Boolean status;
	
	@Column(name = "MaidQuantity")
	private Integer maidQuantity;
	
	@ManyToOne()
	@JoinColumn(name = "categoryId")
	private CategoryEntity category;
	
	@OneToMany(mappedBy = "service", fetch = FetchType.EAGER)
	private List<ServicePriceEntity> servicePrices;
	
//	@OneToOne(mappedBy = "service", fetch = FetchType.LAZY)
//	private BookingEntity booking;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getTime() {
		return time;
	}

	public void setTime(Integer time) {
		this.time = time;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
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

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}
	
	public Integer getMaidQuantity() {
		return maidQuantity;
	}

	public List<ServicePriceEntity> getServicePrices() {
		return servicePrices;
	}

	public void setServicePrices(List<ServicePriceEntity> servicePrices) {
		this.servicePrices = servicePrices;
	}

	public void setMaidQuantity(Integer maidQuantity) {
		this.maidQuantity = maidQuantity;
	}

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}

//	public BookingEntity getBooking() {
//		return booking;
//	}
//
//	public void setBooking(BookingEntity booking) {
//		this.booking = booking;
//	}
//	
	
}
