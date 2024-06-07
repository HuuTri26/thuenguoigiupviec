package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.BookingEntity;

@Service
@Transactional
public interface BookingService {
	public List<BookingEntity> getListBooking();
	public void createBooking(BookingEntity booking);
	public void updateBooking(BookingEntity booking);
}
