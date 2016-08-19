package com.dineshonjava.dao;

import java.util.List;

import com.dineshonjava.model.Account;

/**
 * @author Dinesh Rajput
 *
 */
public interface AccountDao {
	
	public void addAccount(Account account);//thêm một account

	public List<Account> listAccount();//danh sách account
	
	public Account getAccount(int id);//get giá trị một account
	
	public void deleteAccount(Account account);//xóa một account
	
	public List<Account> searchUser(String name, Integer type);
}
