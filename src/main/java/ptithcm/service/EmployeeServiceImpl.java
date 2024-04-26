package ptithcm.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.EmployeeDAO;
import ptithcm.entity.EmployeeEntity;

@Transactional
@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	EmployeeDAO EmployeeDAO;

	@Override
	public EmployeeEntity getEmployeeByEmail(String email) {
		return EmployeeDAO.getEmployeeByEmail(email);
	}

	@Override
	public void updateEmployee(EmployeeEntity employee) {
		EmployeeDAO.updateEmployee(employee);
		
	}

}
