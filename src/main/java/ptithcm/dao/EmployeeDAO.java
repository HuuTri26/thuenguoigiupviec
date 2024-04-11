package ptithcm.dao;

import ptithcm.entity.EmployeeEntity;

public interface EmployeeDAO {
	public EmployeeEntity getEmployeeByEmail(String email);
}
