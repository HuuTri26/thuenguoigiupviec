package ptithcm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.BillEntity;

@Transactional
@Repository
public class BillDAOImpl implements BillDAO {
	
	@Autowired
	SessionFactory factory;

	@Override
	public List<BillEntity> getListBill() {
		Session session = factory.getCurrentSession();
		String hql = "FROM BillEntity";
		Query query = session.createQuery(hql);
		List<BillEntity> billList = query.list();
		return billList;
	}

	@Override
	public void createBill(BillEntity bill) {
		Session session = factory.getCurrentSession();
		session.save(bill);
		
	}

	@Override
	public void updateBill(BillEntity bill) {
		Session session = factory.getCurrentSession();
		session.update(bill);
		
	}

	@Override
	public BillEntity getBillById(int billId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
        String hql = "FROM BillEntity where id=:billId";
        Query query = session.createQuery(hql);
        query.setParameter("billId", billId);
        BillEntity bill = (BillEntity) query.uniqueResult();
        return bill;
	}

}
