package com.nttdata.checkin.ws.rest;

import java.net.Socket;
import java.util.ArrayList;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.nttdata.checkin.ws.DSCWebService;
import com.nttdata.checkin.ws.Passenger;
import com.nttdata.checkin.ws.User;


public class LCA01WebServiceImpl implements DSCWebService{
	
	 
	
	@Path("/user/get")
	@Produces(MediaType.APPLICATION_JSON)
	public User login(User user) {
		User u = new User();
		u.setUsername("test001");
		u.setPassword("Metallica");
		u.setRole(User.ROLE_AGENT);
		return u;
	}

	 

}
