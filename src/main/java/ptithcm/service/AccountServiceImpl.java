package ptithcm.service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
	public boolean getStatusFromAccount(String email) {
		return (AccountDAO.getStatusFromAccount(email));
	}

	@Override
	public Integer getRoleIdFromAccount(String email) {
		return (AccountDAO.getRoleIdFromAccount(email));
	}

	@Override
	public Boolean isValidEmail(String email) {
		if (email.isEmpty()) {
            return true;
        } else {
            String regex = "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(email.trim()); // Trimming to handle potential whitespace
            return matcher.matches();
        }
	}

	@Override
	//Chuẩn hóa chuỗi
	public String standardize(String str) {
		str = str.trim();
        str = str.replaceAll("\\s+", " ");
        return str;
	}

	@Override
	//Chuẩn hóa những danh từ riêng
	public String standardizeName(String str) {
		str = standardize(str);
        String temp[] = str.split(" ");
        str = ""; // ? ^-^
        for (int i = 0; i < temp.length; i++) {
            str += String.valueOf(temp[i].charAt(0)).toUpperCase() + temp[i].substring(1);
            if (i < temp.length - 1) // ? ^-^
                str += " ";
        }
        return str;
	}

	@Override
	public boolean isExistEmail(String email) {
		return AccountDAO.isExistEmail(email);
	}

	@Override
	public boolean isValidPhoneNumber(String phoneNumber) {
		String regex = "^[0-9]{10}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(phoneNumber);
        return matcher.matches();
	}

	@Override
	public String getHashPassword(String password) {
		try {
            // Create MessageDigest instance for SHA-256
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            
            // Add password bytes to digest
            md.update(password.getBytes());
            
            // Get the hash's bytes
            byte[] bytes = md.digest();
            
            // Convert bytes to hexadecimal format
            StringBuilder sb = new StringBuilder();
            for (byte aByte : bytes) {
                sb.append(Integer.toString((aByte & 0xff) + 0x100, 16).substring(1));
            }
            
            // Get complete hashed password in hexadecimal format
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            // Handle NoSuchAlgorithmException
            e.printStackTrace();
            return null;
        }
	}

	@Override
	public String generateOTP() {
		String alphabelt = "0123456789qwertyuiopasdfghjkzxcvbnmQWERTYUOPLKJHGFDSAZXCVBNM";

		String otp = "";
		Random random = new Random();
		for (int i = 0; i < 6; i++) {
			otp += alphabelt.charAt(random.nextInt(60));
		}

		return otp;
	}
	
}
