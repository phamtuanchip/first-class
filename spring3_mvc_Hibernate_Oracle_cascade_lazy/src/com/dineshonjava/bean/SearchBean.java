package com.dineshonjava.bean;

import java.util.List;

import com.dineshonjava.model.Account;

public class SearchBean {
	private String name;
	private List<Account> lstAccount;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Account> getLstAccount() {
		return lstAccount;
	}
	public void setLstAccount(List<Account> lstAccount) {
		this.lstAccount = lstAccount;
	}
}
