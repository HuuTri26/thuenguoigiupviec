package ptithcm.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.BillEntity;

@Repository
@Transactional
public class BillDAOImpl implements BillDAO{
	
	@Autowired
	SessionFactory factory;

	@Override
	public void createBill(BillEntity bill) {
		Session session = factory.getCurrentSession();
		session.save(bill);
		
	}
	
}
