package ptithcm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.ServiceEntity;

@Repository
@Transactional
public class ServiceDAOImpl implements ServiceDAO {
	
	@Autowired
	SessionFactory factory;

	@Override
	public List<ServiceEntity> getListService() {	
			Session session = factory.getCurrentSession();
			String hql = "FROM ServiceEntity";
			Query query = session.createQuery(hql);
			List<ServiceEntity> maidServiceList = query.list();
			return maidServiceList;
	}

	@Override
	public void addService(ServiceEntity service) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.save(service);
			t.commit();
		}catch (Exception e) {
			t.rollback();
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}finally {
			session.close();
		}
	}

	@Override
	public void updateService(ServiceEntity service) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.update(service);
			t.commit();
		}catch (Exception e) {
			t.rollback();
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}finally {
			session.close();
		}
	}

	@Override
	public List<ServiceEntity> getListServiceByCategoryId(Integer categoryId) {
		Session session = factory.getCurrentSession();
		String hql = "FROM ServiceEntity s WHERE s.category.id = :categoryId";
		Query query = session.createQuery(hql);
		query.setParameter("categoryId", categoryId);
		List<ServiceEntity> maidServiceList = query.list();
		return maidServiceList;
	}

	@Override
	public ServiceEntity getSetviceById(Integer id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM ServiceEntity WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		ServiceEntity maidService = (ServiceEntity) query.uniqueResult();
		return maidService;
	}

	@Override
	public Integer getTimeOfService(int serviceId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
	    String hql = "SELECT expectedDuration FROM ServiceEntity WHERE id = :id";
	    Query query = session.createQuery(hql);
	    query.setParameter("id", serviceId);
	    Integer expectedDuration = (Integer) query.uniqueResult();
	    return expectedDuration;
	}
	
	
}
