package ptithcm.service;

import java.util.List;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.ServiceEntity;

@Service
@Transactional
public interface MaidServiceService {
	public List<ServiceEntity> getListService();
	public void addService(ServiceEntity service);
	public void updateService(ServiceEntity service);
	public List<ServiceEntity> getListServiceByCategoryId(Integer categoryId);
	public ServiceEntity getServiceById(Integer id);
	
}
