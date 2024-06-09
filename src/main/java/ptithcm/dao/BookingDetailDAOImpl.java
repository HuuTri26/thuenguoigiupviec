package ptithcm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.BookingDetailEntity;

@Transactional
@Repository
public class BookingDetailDAOImpl implements BookingDetailDAO{
	
	@Autowired
	SessionFactory factory;
	@Override
	public void createBookingDetail(BookingDetailEntity bookingDetail) {
		// TODO Auto-generated method stub
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.save(bookingDetail);
			t.commit();
		}catch (Exception e) {
			t.rollback();
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}finally {
			session.close();
		}
		
	}

	@Override
	public void updateBookingDetail(BookingDetailEntity bookingDetail) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
	    try {
	        session.merge(bookingDetail);
	    } catch (Exception e) {
	        System.out.println("Error: " + e.toString() + "\nStacktrace:");
	        e.printStackTrace();
	    }
		
	}


	@Override
	public List<BookingDetailEntity> getBookingDetailsByBookingId(int bookingId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		String hql = "FROM BookingDetailEntity where booking.id=:bookingId";

		Query query = session.createQuery(hql);
		query.setParameter("bookingId", bookingId);

		List<BookingDetailEntity> bookingDetailsList = query.list();

		return bookingDetailsList;
	}

	@Override
	public void deleteBookingDetail(int bookingId, int maidId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		String hql = "DELETE FROM BookingDetailEntity WHERE booking.id =:bookingId AND maid.id =:maidId";
		Query query = session.createQuery(hql);
		query.setParameter("bookingId", bookingId);
		query.setParameter("maidId", maidId);
		int affectedRows = query.executeUpdate();
	}

}
