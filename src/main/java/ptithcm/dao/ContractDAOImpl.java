package ptithcm.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.AccountEntity;
import ptithcm.entity.ContractEntity;

@Transactional
@Repository
public class ContractDAOImpl implements ContractDAO {

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
	
	@Override
	public void updateContractStatus() {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    String formattedCurrentDate = dateFormat.format(new Date());
	    
	    Date currentDate = null;
	    try {
	        currentDate = dateFormat.parse(formattedCurrentDate);
	    } catch (ParseException e) {
	        e.printStackTrace();
	    }
		
		Session session = factory.getCurrentSession();
		String hql = "UPDATE ContractEntity c SET c.status = "
				+ "CASE "
				+ "WHEN c.startAt <= :currentDate AND c.endAt >= :currentDate THEN 1 "
				+ "WHEN c.startAt > :currentDate THEN NULL "
				+ "ELSE 0 "
				+ "END "
				+ "WHERE c.startAt IS NOT NULL AND c.endAt IS NOT NULL";
		
		Query query = session.createQuery(hql);
		query.setParameter("currentDate", currentDate);
		query.executeUpdate();
	}
	
	@Override
	public void createContract(ContractEntity contract) {
		Session session = factory.getCurrentSession();
		session.save(contract);
	}
	
	@Override
	public void renewContract(ContractEntity contract) {
		Session session = factory.getCurrentSession();
		session.update(contract);
	}

	@Override
	public ContractEntity getContractBy(Integer customerId, Integer maidId, Date createAt) {
		Session session = factory.getCurrentSession();
		String hql = "FROM ContractEntity c WHERE c.customer.id = :customerId AND c.maid.id = :maidId AND c.createAt = :createAt";
		Query query = session.createQuery(hql);
		query.setParameter("customerId", customerId);
		query.setParameter("maidId", maidId);
		query.setParameter("createAt", createAt);

		ContractEntity contract = (ContractEntity) query.uniqueResult();
		return contract;
	}

	@Override
	public List<ContractEntity> getListContractBy(Integer customerId) {
		Session session = factory.getCurrentSession();
		String hql = "FROM ContractEntity c WHERE c.customer.id = :customerId";
		Query query = session.createQuery(hql);
		query.setParameter("customerId", customerId);
		List<ContractEntity> contractList = query.list();
		return contractList;
	}
	
}
