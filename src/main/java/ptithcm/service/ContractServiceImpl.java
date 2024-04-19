package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.ContractDAO;
import ptithcm.entity.ContractEntity;

@Service
@Transactional
public class ContractServiceImpl implements ContractService{
	 
	@Autowired
	ContractDAO ContractDAO;

	@Override
	public List<ContractEntity> getListContract() {
		return ContractDAO.getListContract();
	}

}
