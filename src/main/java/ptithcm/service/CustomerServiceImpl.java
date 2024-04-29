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

	@Override
	public void addCustomer(CustomerEntity customer) {
		CustomerDAO.addCustomer(customer);
		
	}

	@Override
	public void updateCustomer(CustomerEntity customer) {
		CustomerDAO.updateCustomer(customer);
		
	}

	@Override
	public CustomerEntity getCustomerById(Integer id) {
		return CustomerDAO.getCustomerById(id);
	}

	@Override
	public CustomerEntity getCustomerByEmail(String email) {
		return CustomerDAO.getCustomerByEmail(email);
	}
	
}
