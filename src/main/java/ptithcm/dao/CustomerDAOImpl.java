package ptithcm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ptithcm.entity.CustomerEntity;

@Repository
@Transactional
public class CustomerDAOImpl implements CustomerDAO{
	
	@Autowired
	SessionFactory factory;

	@Override
	public List<CustomerEntity> getListCustomer() {
		Session session = factory.getCurrentSession();
		String hql = "FROM CustomerEntity";
		Query query = session.createQuery(hql);
		List<CustomerEntity> customerList = query.list();
		return customerList;
	}

	@Override
	public void addCustomer(CustomerEntity customer) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.save(customer);
			t.commit();
		}catch (Exception e) {
			t.rollback();
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}finally {
			session.close();
		}
		
	}

	@Override
	public void updateCustomer(CustomerEntity customer) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.update(customer);
			t.commit();
		}catch (Exception e) {
			t.rollback();
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}finally {
			session.close();
		}
		
	}

}
