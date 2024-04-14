package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.CustomerDAO;
import ptithcm.entity.CustomerEntity;

@Transactional
@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	CustomerDAO CustomerDAO;
	
	@Override
	public List<CustomerEntity> getListCustomer() {
		return CustomerDAO.getListCustomer();
	}
	
}
