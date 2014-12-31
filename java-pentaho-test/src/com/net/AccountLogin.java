package com.net;

public class AccountLogin {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	
	private String name;
	private String pass;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public static AccountLogin getAcountAdminLogin() {
		
		AccountLogin acc = new AccountLogin();
		acc.name="Admin";
		acc.pass="password";
	return acc;
	}
public static AccountLogin getAcountMemmberLogin() {
		
		AccountLogin acc = new AccountLogin();
		acc.name="Ryly";
		acc.pass="password";
	return acc;
	}
	

}
