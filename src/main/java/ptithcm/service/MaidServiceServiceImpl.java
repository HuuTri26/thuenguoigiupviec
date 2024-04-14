package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.MaidServiceDAO;
import ptithcm.entity.ServiceEntity;

@Service
@Transactional
public class MaidServiceServiceImpl implements MaidServiceService {
	
	@Autowired
	MaidServiceDAO MaidServiceDAO;

	@Override
	public List<ServiceEntity> getListService() {
		return MaidServiceDAO.getListService();
	}

}
