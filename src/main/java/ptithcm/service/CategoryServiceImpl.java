package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.CategoryDAO;
import ptithcm.entity.CategoryEntity;

@Transactional
@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Autowired
	CategoryDAO CategoryDAO;

	@Override
	public List<CategoryEntity> getListCategory() {
		return CategoryDAO.getListCategory();
	}

	@Override
	public CategoryEntity getCategoryById(Integer id) {
		return CategoryDAO.getCategoryById(id);
	}

}
