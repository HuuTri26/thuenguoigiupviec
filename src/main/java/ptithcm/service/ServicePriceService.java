package ptithcm.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.ServicePriceEntity;

@Transactional
@Service
public interface ServicePriceService {
	public void addServicePrice(ServicePriceEntity servicePrice);
	public void updateServicePrice(ServicePriceEntity servicePrice);
}
