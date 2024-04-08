package ptithcm.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import ptithcm.entity.AccountEntity;

@Service
@Transactional
public interface AccountService {
	public void addAccount(AccountEntity acc);
	public void updateAccount(AccountEntity acc);
	public boolean isExistAccount(String email, String password);
	public boolean getStatusFromAccount(String email, String password);
	public Integer getRoleIdFromAccount(String email, String password);
}
