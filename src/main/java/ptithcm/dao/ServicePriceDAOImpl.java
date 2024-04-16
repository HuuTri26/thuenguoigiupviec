package ptithcm.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.ServicePriceEntity;

@Transactional
@Repository
public class ServicePriceDAOImpl implements ServicePriceDAO{
	
	@Autowired
	SessionFactory factory;

	@Override
	public void addServicePrice(ServicePriceEntity servicePrice) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.save(servicePrice);
			t.commit();
		}catch (Exception e) {
			t.rollback();
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}finally {
			session.close();
		}
	}

	@Override
	public void updateServicePrice(ServicePriceEntity servicePrice) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.update(servicePrice);
			t.commit();
		}catch (Exception e) {
			t.rollback();
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}finally {
			session.close();
		}
	}

}
