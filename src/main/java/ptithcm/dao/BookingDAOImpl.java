package ptithcm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.BookingEntity;

@Transactional
@Repository
public class BookingDAOImpl implements BookingDAO {
	
	@Autowired
	SessionFactory factory;

	@Override
	public List<BookingEntity> getListBooking() {
		Session session = factory.getCurrentSession();
		String hql = "FROM BookingEntity";
		Query query = session.createQuery(hql);
		List<BookingEntity> bookingList = query.list();
		return bookingList;
	}

	@Override
	public void createBooking(BookingEntity booking) {
		Session session = factory.getCurrentSession();
		session.save(booking);
		
	}

	@Override
	public void updateBooking(BookingEntity booking) {
		Session session = factory.getCurrentSession();
		session.update(booking);
		
	}

	@Override
	public BookingEntity getBookingById(int bookingId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
        String hql = "FROM BookingEntity where id=:bookingId";
        Query query = session.createQuery(hql);
        query.setParameter("bookingId", bookingId);
        BookingEntity booking = (BookingEntity) query.uniqueResult();
        return booking;
	}

}
