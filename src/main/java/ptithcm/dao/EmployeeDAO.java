package ptithcm.dao;

import ptithcm.entity.EmployeeEntity;

public interface EmployeeDAO {
	public EmployeeEntity getEmployeeByEmail(String email);
	public void updateEmployee(EmployeeEntity employee);
	public EmployeeEntity getEmployeeById(int id);
}
