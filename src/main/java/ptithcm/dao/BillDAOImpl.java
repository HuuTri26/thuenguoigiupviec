package ptithcm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.BillEntity;

@Repository
@Transactional
public class BillDAOImpl implements BillDAO {

	@Autowired
	SessionFactory factory;

	@Override
	public void createBill(BillEntity bill) {
		Session session = factory.getCurrentSession();
		session.save(bill);

	}

	@Override
	public List<BillEntity> getListBill() {
		Session session = factory.getCurrentSession();
		String hql = "FROM BillEntity";
		Query query = session.createQuery(hql);
		List<BillEntity> bills = query.list();
		return bills;
	}

	@Override
	public List<BillEntity> getBillListBy(Integer customerId) {
		Session session = factory.getCurrentSession();
		String hql = "SELECT b FROM BillEntity b JOIN b.booking bk WHERE bk.customer.id = :customerId";
		Query query = session.createQuery(hql);
		query.setParameter("customerId", customerId);
		List<BillEntity> bills = query.list();
		return bills;
	}

}
