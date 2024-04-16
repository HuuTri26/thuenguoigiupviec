package ptithcm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptithcm.entity.CategoryEntity;

@Repository
@Transactional
public class CategoryDAOImpl implements CategoryDAO{
	
	@Autowired
	SessionFactory factory;

	@Override
	public List<CategoryEntity> getListCategory() {
		Session session = factory.getCurrentSession();
		String hql = "FROM CategoryEntity";
		Query query = session.createQuery(hql);
		List<CategoryEntity> categoryList = query.list();
		return categoryList;
	}

	@Override
	public CategoryEntity getCategoryById(Integer Id) {
		CategoryEntity category = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM CategoryEntity WHERE Id = :Id";
		try {
			Query query = session.createQuery(hql);
			query.setParameter("Id", Id);
			
			category = (CategoryEntity) query.uniqueResult();
			
		}catch (Exception e) {
			System.out.println("Error: " + e.toString() + "\nStacktrace:"); e.printStackTrace();
		}
		
		return category;
	}
	
}
