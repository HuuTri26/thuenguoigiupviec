package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.MaidDAO;
import ptithcm.entity.MaidEntity;

@Service
@Transactional
public class MaidServiceImpl implements MaidService{
	
	@Autowired
	MaidDAO MaidDAO;

	@Override
	public List<MaidEntity> getListMaid() {
		return MaidDAO.getListMaid();
	}
	
}