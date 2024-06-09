package ptithcm.entity;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
	@JoinColumn(name = "bookingId")
	private BookingEntity booking;
	

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "MaidId")
	private MaidEntity maid;

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

	public MaidEntity getMaid() {
		return maid;
	}

	public void setMaid(MaidEntity maid) {
		this.maid = maid;
	}
	
	
}
