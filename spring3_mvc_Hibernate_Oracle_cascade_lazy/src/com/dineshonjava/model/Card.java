package com.dineshonjava.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/**
 * @author Dinesh Rajput
 *
 */
@Entity
//@Table(name="card")
public class Card {
//	@Id
//	@GeneratedValue(strategy=GenerationType.AUTO)
//	@Column(name = "id", unique = true, nullable = false)
	private Integer id;//ma the
//	@Column(name="name")
	private String name;//ten nhà cap the
//	@Column(name="type")
	private String type;//loai the tin dung
//	@Column(name="numberac")
	private String numberAc;// so tai khoan
//	@Column(name="accountholders")
	private String accountHolders;//ten chu tai khoan
//	@Column(name="branch")
	private String branch;//chi nhanh cap the
//	@Column(name = "aid",  nullable = false)
//	private Integer aid;
	
	
	
	
	
//	@ManyToOne
//	@JoinColumn(name="aid", nullable=false)
	private Account account;
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account){
		this.account= account;
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
	public void setNumberAc(String numberac) {
		this.numberAc = numberac;
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
//	public Integer getAid() {
//		return aid;
//	}
//	public void setAid(Integer aid) {
//		this.aid = aid;
//	}
}
