package com.nttdata.checkin.service.impl;

import java.io.IOException;

import javax.naming.AuthenticationException;

import com.nttdata.checkin.model.User;
import com.nttdata.checkin.service.DSCService;


public class LCA01Service implements DSCService{
	
	 
	 
	public User login(User user) throws AuthenticationException{
		User u = new User();
		u.setUsername("test001");
		u.setPassword("Metallica");
		u.setRole(User.ROLE_AGENT);
		return u;
	}

	@Override
	public boolean open() throws IOException {
		// TODO Auto-generated method stub
		return false;
	}

	 

}
