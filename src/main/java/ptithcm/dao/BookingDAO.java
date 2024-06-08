package ptithcm.dao;

import java.util.List;

import ptithcm.entity.BookingEntity;

public interface BookingDAO {
	public List<BookingEntity> getListBooking();
	public void createBooking(BookingEntity booking);
	public void updateBooking(BookingEntity booking);
}