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
	public boolean getStatusFromAccount(String email);
	public Integer getRoleIdFromAccount(String email);
	public boolean isExistEmail(String email);
	public AccountEntity getAccountByEmail(String email);
	
	public Boolean isValidEmail(String email);
	public String standardize(String str);
	public String standardizeName(String str);
	public boolean isValidPhoneNumber(String phoneNumber);
	public String getHashPassword(String password);
	public String generateOTP();
	
}
