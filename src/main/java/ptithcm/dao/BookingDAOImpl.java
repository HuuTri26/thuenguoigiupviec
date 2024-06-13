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

	@Override
	public List<BookingEntity> getBookingsForMaid(int maidId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
	    String hql = "SELECT bd.booking FROM BookingDetailEntity bd WHERE bd.maid.id = :maidId";
	    Query query = session.createQuery(hql);
	    query.setParameter("maidId", maidId);
	    List<BookingEntity> bookings = query.list();
	    return bookings;
	}

	@Override
	public List<BookingEntity> getBookingListBy(Integer customerId) {
		Session session = factory.getCurrentSession();
        String hql = "FROM BookingEntity b WHERE b.customer.id = :customerId";
        Query query = session.createQuery(hql);
        query.setParameter("customerId", customerId);
        List<BookingEntity> bookings = query.list();
        return bookings;
	}

	@Override
	public List<BookingEntity> getActiveBookingListByMaidId(Integer maidId) {
		Session session = factory.getCurrentSession();
        String hql = "SELECT b FROM BookingEntity b " +
                     "JOIN b.bookingDetails bd " +
                     "JOIN bd.maid m " +
                     "WHERE m.id = :maidId AND b.paymentStatus = 0";
        Query query = session.createQuery(hql);
        query.setParameter("maidId", maidId);
        List<BookingEntity> bookings = query.list();
        
        return bookings;
	}


}
