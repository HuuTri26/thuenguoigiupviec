package ptithcm.dao;

import ptithcm.entity.AccountEntity;

public interface AccountDAO {
	public void addAccount(AccountEntity acc);
	public void updateAccount(AccountEntity acc);
	public boolean isExistAccount(String email, String password);
	public boolean getStatusFromAccount(String email);
	public Integer getRoleIdFromAccount(String email);
	public boolean isExistEmail(String email);
	public AccountEntity getAccountByEmail(String email);
	
}
