package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.BookingDAO;
import ptithcm.entity.BookingEntity;

@Transactional
@Service
public class BookingServiceImpl implements BookingService{
	
	@Autowired
	BookingDAO BookingDAO;
	
	@Override
	public List<BookingEntity> getListBooking() {
		return BookingDAO.getListBooking();
		
	}

	@Override
	public void createBooking(BookingEntity booking) {
		BookingDAO.createBooking(booking);
		
	}

	@Override
	public void updateBooking(BookingEntity booking) {
		BookingDAO.updateBooking(booking);
		
	}

}
