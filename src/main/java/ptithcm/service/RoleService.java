package ptithcm.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.RoleEntity;

@Service
@Transactional
public interface RoleService {
	public RoleEntity getRoleById(int Id);
}
