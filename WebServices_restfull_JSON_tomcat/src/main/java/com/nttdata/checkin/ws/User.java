package com.nttdata.checkin.ws;

import java.io.Serializable;

public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1229635597484058322L;
	private String username ;
	private String password;
	private String role;
	private String description;
	
	public static final String ROLE_AGENT = "agent";
	public static final String ROLE_SUPERVISOR =  "supervisor"; 
	 
	 
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
