package ptithcm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.ContractEntity;

@Transactional
@Service
public interface ContractService {
	public List<ContractEntity> getListContract();
}
