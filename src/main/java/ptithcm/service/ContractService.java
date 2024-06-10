package ptithcm.service;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.ContractEntity;

@Transactional
@Service
public interface ContractService {
	public List<ContractEntity> getListContract();
	public void updateContractStatus();
	public ContractEntity getContractBy(Integer customerId, Integer maidId, Date createAt);
	public void createContract(ContractEntity contract);
	public void renewContract(ContractEntity contract);
	public List<ContractEntity> getListContractBy(Integer customerId);
	
}
