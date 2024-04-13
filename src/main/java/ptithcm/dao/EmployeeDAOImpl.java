package ptithcm.dao;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.EmployeeEntity;

@Transactional
@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
	
	@Autowired
	SessionFactory factory;

	@Override
	public EmployeeEntity getEmployeeByEmail(String email) {
		EmployeeEntity employee = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM EmployeeEntity WHERE email = :email";
		try {
			Query query = session.createQuery(hql);
			query.setParameter("email", email);
			
			employee = (EmployeeEntity) query.uniqueResult();
			
		}catch (Exception e) {
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}
		return employee;
	}
	
}