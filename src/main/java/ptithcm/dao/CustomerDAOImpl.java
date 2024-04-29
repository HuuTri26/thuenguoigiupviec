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
		Session session = factory.getCurrentSession();
		session.save(customer);
		
	}

	@Override
	public void updateCustomer(CustomerEntity customer) {
		Session session = factory.getCurrentSession();
		session.update(customer);
		
	}

	@Override
	public CustomerEntity getCustomerById(Integer id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM CustomerEntity WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		CustomerEntity customer = (CustomerEntity) query.uniqueResult();
		return customer;
	}

	@Override
	public CustomerEntity getCustomerByEmail(String email) {
		Session session = factory.getCurrentSession();
		String hql = "FROM CustomerEntity WHERE email = :email";
		Query query = session.createQuery(hql);
		query.setParameter("email", email);
		CustomerEntity customer = (CustomerEntity) query.uniqueResult();
		return customer;
	}

}
