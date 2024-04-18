package ptithcm.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.ServicePriceDAO;
import ptithcm.entity.ServicePriceEntity;

@Transactional
@Service
public class ServicePriceServiceImpl implements ServicePriceService {
	
	@Autowired
	ServicePriceDAO ServicePriceDAO;

	@Override
	public void addServicePrice(ServicePriceEntity servicePrice) {
		ServicePriceDAO.addServicePrice(servicePrice);
		
	}

	@Override
	public void updateServicePrice(ServicePriceEntity servicePrice) {
		ServicePriceDAO.updateServicePrice(servicePrice);
		
	}
	
}
