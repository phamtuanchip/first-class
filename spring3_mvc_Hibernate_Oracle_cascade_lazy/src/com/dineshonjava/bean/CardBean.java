package com.dineshonjava.bean;

public class CardBean {
	private Integer id;
	private String type;
	private String name;
	private String numberAc;
	private String accountHolders;
	private String branch;
	private Integer aid;
	private AccountBean accountBean;
		
	public AccountBean getAccountBean() {
		return accountBean;
	}
	public void setAccountBean(AccountBean accountBean) {
		this.accountBean = accountBean;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumberAc() {
		return numberAc;
	}
	public void setNumberAc(String numberAc) {
		this.numberAc = numberAc;
	}
	public String getAccountHolders() {
		return accountHolders;
	}
	public void setAccountHolders(String accountHolders) {
		this.accountHolders = accountHolders;
	}
	
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
}
