package com.nttdata.checkin.service.impl;

import java.net.Socket;
import java.util.ArrayList;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.nttdata.checkin.modal.Passenger;
import com.nttdata.checkin.modal.User;
import com.nttdata.checkin.service.DSCService;


public class LCA01ServiceImpl implements DSCService{
	
	 
	 
	public User login(User user) {
		User u = new User();
		u.setUsername("test001");
		u.setPassword("Metallica");
		u.setRole(User.ROLE_AGENT);
		return u;
	}

	 

}
