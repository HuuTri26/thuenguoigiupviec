package ptithcm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
		String hql = "FROM MaidEntity";
		Query query = session.createQuery(hql);
		List<CustomerEntity> customerList = query.list();
		return customerList;
	}

}
