package ptithcm.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.EmployeeEntity;

@Service
@Transactional
public interface EmployeeService {
	public EmployeeEntity getEmployeeByEmail(String email);
}
