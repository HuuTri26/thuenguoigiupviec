package ptithcm.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.RoleDAO;
import ptithcm.entity.RoleEntity;

@Service
@Transactional
public class RoleServiceImpl implements RoleService{
	
	@Autowired
	RoleDAO RoleDAO;

	@Override
	public RoleEntity getRoleById(int Id) {
		return RoleDAO.getRoleById(Id);
	}

}
