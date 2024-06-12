package ptithcm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.AccountDAO;
import ptithcm.dao.BookingDetailDAO;
import ptithcm.entity.BookingDetailEntity;
import ptithcm.entity.BookingEntity;

@Service
public class BookingDetailServiceImpl implements BookingDetailService{

	@Autowired
	BookingDetailDAO bookingDetailDAO;
	

	@Override
	public void updateBookingDetail(BookingDetailEntity bookingDetails) {
		bookingDetailDAO.updateBookingDetail(bookingDetails);
		
	}

	@Override
	public List<BookingDetailEntity> getListBookingDetailsByBookingId(int bookingId) {
		// TODO Auto-generated method stub
		return bookingDetailDAO.getBookingDetailsByBookingId(bookingId);
		
	}

	@Override
	public void addBookingDetail(BookingDetailEntity bookingDetail) {
		// TODO Auto-generated method stub
		bookingDetailDAO.createBookingDetail(bookingDetail);
	}

	@Override
	public void deleteBookingDetailsByBookingIdAndMaidId(int bookingId, int maidId) {
		// TODO Auto-generated method stub
		bookingDetailDAO.deleteBookingDetail(bookingId, maidId);
	}

}
