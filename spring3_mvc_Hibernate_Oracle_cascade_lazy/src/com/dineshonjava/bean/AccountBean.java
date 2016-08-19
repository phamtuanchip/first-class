package com.dineshonjava.bean;

import java.util.List;

import com.dineshonjava.model.Card;

/**Javabean là những lớp trong java được thiết kế đặc biệt nhằm tăng tính sử dụng lại
 * lớp bean là lớp đối tượng tương xướng với cơ sở dư liệu
 *Cần phải Implements lớp java.io.Serializable interface
 *Có một hàm khởi tạo không tham số
 *Có các phương thức setter và getter cho phép truy cập và gán giá trị cho các thuộc tính
 *Có thể có phương thức đăng ký để nhận sự kiện từ các đối tượng khác hoặc gửi sự kiện tới các 
 *đối tượng khác (sử dụng lớp  java.beans.PropertyChangEvent để gửi sự kiện 
 *và lớp  java.beans.PropertyChangeListener để đăng ký nhận sự kiện
 */
public class AccountBean {
	private Integer id;
	private String name;
	private Integer age;
	private String identityCard;
	private String address;
	private String users;
	private String passwd;
	private String emails;
	private String phone;
	private CardBean cardBean;
	
	private List<AccountBean> lstAccount;

	public List<AccountBean> getLstAccount() {
		return lstAccount;
	}
	public void setLstAccount(List<AccountBean> lstAccount) {
		this.lstAccount = lstAccount;
	}
	public CardBean getCardBean() {
		return cardBean;
	}
	public void setCardBean(CardBean cardBean) {
		this.cardBean = cardBean;
	}
	public String getIdentityCard() {
		return identityCard;
	}
	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
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
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
