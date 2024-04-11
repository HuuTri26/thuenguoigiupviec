package ptithcm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.MaidEntity;

@Transactional
@Repository
public class MaidDAOImpl implements MaidDAO {
	
	@Autowired
	SessionFactory factory;
	
	@Override
	public List<MaidEntity> getListMaid() {
		Session session = factory.getCurrentSession();
		String hql = "FROM MaidEntity";
		Query query = session.createQuery(hql);
		List<MaidEntity> maidList = query.list();
		return maidList;
	}

}
