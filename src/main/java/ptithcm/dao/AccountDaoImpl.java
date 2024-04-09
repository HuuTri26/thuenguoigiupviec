package ptithcm.dao;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.AccountEntity;

@Transactional
@Repository
public class AccountDaoImpl implements AccountDAO{
	
	@Autowired
	SessionFactory factory;

	@Override
	public void addAccount(AccountEntity acc) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.save(acc);
			t.commit();
		}catch (Exception e) {
			t.rollback();
			System.out.println("Error: " + e.toString());
		}finally {
			session.close();
		}
		
	}

	@Override
	public void updateAccount(AccountEntity acc) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		
		try {
			session.update(acc);
			t.commit();
		}catch (Exception e) {
			t.rollback();
			System.out.println("Error: " + e.toString());
		}finally {
			session.close();
		}
		
	}

	@Override
	public boolean isExistAccount(String email, String password) {
		AccountEntity account = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM AccountEntity WHERE email = :email AND password = :password";
		try {
			Query query = session.createQuery(hql);
			query.setParameter("email", email);
			query.setParameter("password", password);
			
			account = (AccountEntity) query.uniqueResult();
			
		}catch (Exception e) {
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}
		return (account != null)? true : false;
	}

	@Override
	public boolean getStatusFromAccount(String email, String password) {
		AccountEntity account = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM AccountEntity WHERE email = :email AND password = :password";
		try {
			Query query = session.createQuery(hql);
			query.setParameter("email", email);
			query.setParameter("password", password);
			
			account = (AccountEntity) query.uniqueResult();
			
		}catch (Exception e) {
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}
//		System.out.println(account.getStatus().toString());
		
		return (account.getStatus());
	}

	@Override
	public Integer getRoleIdFromAccount(String email, String password) {
		Integer roleId = 0;
		Session session = factory.getCurrentSession();
		String hql = "SELECT a.roles.roleID FROM AccountEntity a WHERE a.email = :email AND a.password = :password";
		try {
			Query query = session.createQuery(hql);
			query.setParameter("email", email);
			query.setParameter("password", password);
			
			roleId = (Integer) query.uniqueResult();
		}catch (Exception e) {
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}
//		System.out.println(roleId);
		return roleId;
	}
	
}