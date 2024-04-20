package ptithcm.dao;

import java.util.List;

import ptithcm.entity.CustomerEntity;

public interface CustomerDAO {
	public List<CustomerEntity> getListCustomer();
	public void addCustomer(CustomerEntity customer);
	public void updateCustomer(CustomerEntity customer);
}
