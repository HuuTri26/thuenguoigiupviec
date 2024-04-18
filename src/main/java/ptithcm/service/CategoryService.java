package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.CategoryEntity;

@Transactional
@Service
public interface CategoryService {
	public List<CategoryEntity> getListCategory();
	public CategoryEntity getCategoryById(Integer id);
}
