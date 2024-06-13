package ptithcm.service;

import java.util.Date;
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
		ContractDAO.updateContractStatus();
		return ContractDAO.getListContract();
	}
	
	@Override
	public void updateContractStatus() {
		ContractDAO.updateContractStatus();
		
	}

	@Override
	public void createContract(ContractEntity contract) {
		ContractDAO.createContract(contract);
		
	}

	@Override
	public ContractEntity getContractBy(Integer customerId, Integer maidId, Date createAt) {
		return ContractDAO.getContractBy(customerId, maidId, createAt);
	}

	@Override
	public void renewContract(ContractEntity contract) {
		ContractDAO.renewContract(contract);
		
	}

	@Override
	public List<ContractEntity> getListContractBy(Integer customerId) {
		ContractDAO.updateContractStatus();
		return ContractDAO.getListContractBy(customerId);
	}

	@Override
	public ContractEntity getContractById(Integer id) {
		return ContractDAO.getContractById(id);
	}

}
