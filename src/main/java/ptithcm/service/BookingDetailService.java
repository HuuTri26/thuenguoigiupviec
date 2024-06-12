package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.BookingDetailEntity;
import ptithcm.entity.BookingEntity;

@Service
@Transactional
public interface BookingDetailService {
	public void addBookingDetail(BookingDetailEntity bookingDetail);
	public void updateBookingDetail(BookingDetailEntity bookingDetails);
	public List<BookingDetailEntity> getListBookingDetailsByBookingId(int bookingId);
	public void deleteBookingDetailsByBookingIdAndMaidId(int bookingId, int maidId);
	
}
