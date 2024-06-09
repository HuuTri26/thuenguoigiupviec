package ptithcm.dao;

import java.util.List;

import ptithcm.entity.BookingDetailEntity;

public interface BookingDetailDAO {
	public void createBookingDetail(BookingDetailEntity bookingDetail);
	public void updateBookingDetail(BookingDetailEntity bookingDetail);
	public void deleteBookingDetail(int bookingId, int maidId);
	public List<BookingDetailEntity> getBookingDetailsByBookingId(int bookingId);
	
}
