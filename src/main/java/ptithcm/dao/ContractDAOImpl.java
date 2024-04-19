package ptithcm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.ContractEntity;

@Transactional
@Repository
public class ContractDAOImpl implements ContractDAO{
	
	@Autowired
	SessionFactory factory;

	@Override
	public List<ContractEntity> getListContract() {
		Session session = factory.getCurrentSession();
		String hql = "FROM ContractEntity";
		Query query = session.createQuery(hql);
		List<ContractEntity> contractList = query.list();
		return contractList;
	}
	
}
