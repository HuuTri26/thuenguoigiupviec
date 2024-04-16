package ptithcm.dao;

import java.util.List;

import ptithcm.entity.CategoryEntity;

public interface CategoryDAO {
	public List<CategoryEntity> getListCategory();
	public CategoryEntity getCategoryById(Integer id);
}
