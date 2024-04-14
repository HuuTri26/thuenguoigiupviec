package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.CustomerEntity;

@Service
@Transactional
public interface CustomerService {
	public List<CustomerEntity> getListCustomer();
}
