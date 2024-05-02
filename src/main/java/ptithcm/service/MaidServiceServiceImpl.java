package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.CategoryDAO;
import ptithcm.dao.ServiceDAO;
import ptithcm.dao.ServicePriceDAO;
import ptithcm.entity.CategoryEntity;
import ptithcm.entity.ServiceEntity;
import ptithcm.entity.ServicePriceEntity;

@Service
@Transactional
public class MaidServiceServiceImpl implements MaidServiceService {
	
	@Autowired
	ServiceDAO MaidServiceDAO;

	@Override
	public List<ServiceEntity> getListService() {
		return MaidServiceDAO.getListService();
	}

	@Override
	public void addService(ServiceEntity service) {
		MaidServiceDAO.addService(service);
	}

	@Override
	public void updateService(ServiceEntity service) {
		MaidServiceDAO.updateService(service);
	}

	@Override
	public List<ServiceEntity> getListServiceByCategoryId(Integer categoryId) {
		return MaidServiceDAO.getListServiceByCategoryId(categoryId);
	}

	@Override
	public ServiceEntity getServiceById(Integer id) {
		return MaidServiceDAO.getSetviceById(id);
	}

}
