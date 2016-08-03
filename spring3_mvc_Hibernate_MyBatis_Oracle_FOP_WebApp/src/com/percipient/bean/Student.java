package com.percipient.bean;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

import org.springframework.stereotype.Component;

@Component
@XmlRootElement(name = "student")
public class Student {

	private String firstName;
	private String lastName;

	@XmlElement(name = "fname")
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@XmlElement(name = "lname")
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public void setName(String name) {
		String[] strArr = name.split(" ");
		this.firstName = strArr[0];
		this.lastName = strArr[1];
	}

}
