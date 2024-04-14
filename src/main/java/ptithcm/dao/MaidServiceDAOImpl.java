package ptithcm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.ServiceEntity;

@Repository
@Transactional
public class MaidServiceDAOImpl implements MaidServiceDAO {
	
	@Autowired
	SessionFactory factory;

	@Override
	public List<ServiceEntity> getListService() {
		List<ServiceEntity> maidServiceList = null;
		try {
			Session session = factory.getCurrentSession();
			String hql = "FROM ServiceEntity";
			Query query = session.createQuery(hql);
			 maidServiceList = query.list();
			return maidServiceList;
		} catch (Exception e) {
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}
		
		return maidServiceList;
	}
	
	
}
