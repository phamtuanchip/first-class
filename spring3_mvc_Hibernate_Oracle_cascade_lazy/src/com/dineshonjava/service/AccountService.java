package com.dineshonjava.service;

import java.util.List;

import com.dineshonjava.model.Account;

/**
 * @author Dinesh Rajput
 *đây là một lớp để xử lý nghiệp vụ nằm giửa controler và model
 */
public interface AccountService {
	
	public void addAccount(Account account); 

	public List<Account> listAccount();
	
	public Account getAccount(int id);
	
	public void deleteAccount(Account account);
	
	public List<Account> searchUser(String name, Integer type);
}
