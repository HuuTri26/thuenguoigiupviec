package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.CategoryEntity;
import ptithcm.entity.ServiceEntity;
import ptithcm.entity.ServicePriceEntity;

@Service
@Transactional
public interface MaidServiceService {
	public List<ServiceEntity> getListService();
	public void addService(ServiceEntity service);
	public void updateService(ServiceEntity service);
	
	public void addServicePrice(ServicePriceEntity servicePrice);
	public void updateServicePrice(ServicePriceEntity servicePrice);
	
	public List<CategoryEntity> getListCategory();
	public CategoryEntity getCategoryById(Integer id);
}
