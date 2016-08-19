package com.dineshonjava.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.Hibernate;

/**
 * @author Dinesh Rajput
 *
 */
@Entity

public class Account implements Serializable{

	private static final long serialVersionUID = -723583058586873479L; 
	/*SerialVersionUID là một phiên bản nhận dạng phổ quát cho một lớp Serializable. 
	 * được sử dụng để kiểm soát phiên bản của đối tượng.
	 */
//	@Id
//	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	


	private String name;
	

	private String address;

	private String identityCard;

	private Integer age;

	private String users;

	private String passwd;
	

	private String emails;

	private String phone;

    private Set<Card> card;
    
    public Set<Card> getCard() {
    	  Hibernate.initialize(card);
    	  return card;
    	 }
    public void setCard(Set<Card> card) {
    	  this.card = card;
    	 }

	
    
    
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIdentityCard() {
		return identityCard;
	}

	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}
	public String getUsers() {
		return users;
	}
	public void setUsers(String users) {
		this.users = users;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getEmails() {
		return emails;
	}
	public void setEmails(String emails) {
		this.emails = emails;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

}