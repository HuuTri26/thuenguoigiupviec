package ptithcm.dao;

import java.util.Date;
import java.util.List;

import ptithcm.entity.ContractEntity;

public interface ContractDAO {
	public List<ContractEntity> getListContract();
	public void updateContractStatus();
	public ContractEntity getUnexpiredContractBy(Integer customerId, Integer maidId, Date createAt);
	public void createContract(ContractEntity contract);
	public void renewContract(ContractEntity contract);
}
