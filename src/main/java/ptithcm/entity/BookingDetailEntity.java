package ptithcm.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "BOOKINGDETAIL")
public class BookingDetailEntity {
	@Id
	@GeneratedValue
	@Column(name = "Id")
	private Integer id;
	
	@Column(name = "Rating")
	private Integer rating;
	
	@Column(name = "Feedback")
	private String feedback;
	
	@ManyToOne()
	@JoinColumn(name = "bookingDetailId")
	private BookingEntity booking;
	
	
	@ManyToMany
    @JoinTable(
        name = "BOOKINGDETAIL_MAID",
        joinColumns = @JoinColumn(name = "BookingDetailId"),
        inverseJoinColumns = @JoinColumn(name = "MaidId")
    )
    private Set<MaidEntity> maids;


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public Integer getRating() {
		return rating;
	}


	public void setRating(Integer rating) {
		this.rating = rating;
	}


	public String getFeedback() {
		return feedback;
	}


	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}


	public BookingEntity getBooking() {
		return booking;
	}


	public void setBooking(BookingEntity booking) {
		this.booking = booking;
	}


	public Set<MaidEntity> getMaids() {
		return maids;
	}


	public void setMaids(Set<MaidEntity> maids) {
		this.maids = maids;
	}
	
}
