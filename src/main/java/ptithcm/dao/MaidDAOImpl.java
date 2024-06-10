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

	   @Override
	    public void addMaid(MaidEntity maid) {
	        Session session = factory.getCurrentSession();
	        session.save(maid);
	    }

	@Override
	public MaidEntity getMaidById(Integer id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM MaidEntity WHERE id = :id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		MaidEntity maid = (MaidEntity) query.uniqueResult();
		return maid;
	}

	  @Override
	    public void updateMaid(MaidEntity maid) {
	        Session session = factory.getCurrentSession();
	        session.update(maid);
	    }

	@Override
	public List<MaidEntity> getListFullTimeMaids() {
		Session session = factory.getCurrentSession();
		String hql = "FROM MaidEntity m WHERE m.employmentType = false";
		Query query = session.createQuery(hql);
		List<MaidEntity> maidList = query.list();
		return maidList;
  }
	public List<MaidEntity> getMaidSelectedListBybookingId(Integer bookingId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		String hql = "SELECT m FROM MaidEntity m JOIN m.bookingDetails bd WHERE bd.booking.id = :bookingId";
		Query query = session.createQuery(hql);
		query.setParameter("bookingId", bookingId);
		List<MaidEntity> maids = query.list();
		return maids;
	}

	@Override
	public List<MaidEntity> getListMaidPartTime() {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();

        String hql = "FROM MaidEntity m  WHERE m.employmentType = 1 AND m.account.status = true";// 1: part-time, 0: full-time;
        Query query = session.createQuery(hql);
        List<MaidEntity> maidList = query.list();
        return maidList;
	}

}
