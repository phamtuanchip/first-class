package com.dineshonjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dineshonjava.dao.AccountDao;
import com.dineshonjava.model.Account;

/**
 * @author Dinesh Rajput
 *
 */
@Service("accountService")//day la khai bao day la mot service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = false)
//dùng để đánh dấu các class có sử dụng đến transaction, các transaction này sẽ được trao cho Spring quản lý.
public class AccountServiceImpl implements AccountService {

//	@Autowired//để thoát khỏi gọi những hàm setter, 
	//Tự động liên kết các bean được sử dụng trong các class với các bean được Spring Container sinh ra và quản lý.
	private AccountDao accountDao;
	
	///@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

	public void addAccount(Account account) {
		accountDao.addAccount(account);
	}
	
	public List<Account> listAccount() {
		return accountDao.listAccount();
	}

	public Account getAccount(int id) {
		return accountDao.getAccount(id);
	}
	
	public void deleteAccount(Account account) {
		accountDao.deleteAccount(account);
	}
	public List<Account> searchUser(String text, Integer type){
		return accountDao.searchUser(text,type);
	}
}
