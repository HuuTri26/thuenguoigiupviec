package ptithcm.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptithcm.dao.AccountDAO;
import ptithcm.entity.AccountEntity;

@Transactional
@Service
public class AccountServiceImpl implements AccountService{
	
	@Autowired
	AccountDAO AccountDAO;
	
	@Override
	public void addAccount(AccountEntity acc) {
		AccountDAO.addAccount(acc);
		
	}

	@Override
	public void updateAccount(AccountEntity acc) {
		AccountDAO.updateAccount(acc);
		
	}

	@Override
	public boolean isExistAccount(String email, String password) {
		return (AccountDAO.isExistAccount(email, password));
	}

	@Override
	public boolean getStatusFromAccount(String email, String password) {
		return (AccountDAO.getStatusFromAccount(email, password));
	}

	@Override
	public Integer getRoleIdFromAccount(String email, String password) {
		return (AccountDAO.getRoleIdFromAccount(email, password));
	}
	
}