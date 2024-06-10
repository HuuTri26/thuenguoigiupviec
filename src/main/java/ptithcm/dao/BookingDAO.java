package ptithcm.dao;

import java.util.List;

import ptithcm.entity.BookingEntity;

public interface BookingDAO {
	public List<BookingEntity> getListBooking();
	public void createBooking(BookingEntity booking);
	public void updateBooking(BookingEntity booking);
	public BookingEntity getBookingById(int booking);
	public List<BookingEntity> getBookingsForMaid(int maid);
}
