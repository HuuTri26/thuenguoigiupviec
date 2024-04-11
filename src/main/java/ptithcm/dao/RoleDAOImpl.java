package ptithcm.dao;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.RoleEntity;

@Transactional
@Repository
public class RoleDAOImpl implements RoleDAO{
	
	@Autowired
	SessionFactory factory;

	@Override
	public RoleEntity getRoleById(int Id) {
		RoleEntity role = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM RoleEntity WHERE roleID = :Id";
		try {
			Query query = session.createQuery(hql);
			query.setParameter("Id", Id);
			
			role = (RoleEntity) query.uniqueResult();
			
		}catch (Exception e) {
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}
		
		return role;
	}
	
}
