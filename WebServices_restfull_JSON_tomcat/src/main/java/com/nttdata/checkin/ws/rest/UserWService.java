package com.nttdata.checkin.ws.rest;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.nttdata.checkin.modal.User;
import com.nttdata.checkin.service.impl.LCA01ServiceImpl;

@Path("/json/user")
@Component
public class UserWService {
	
	@Autowired
	private LCA01ServiceImpl lcaService;
	@GET
	@Path("/get")
	@Produces(MediaType.APPLICATION_JSON)
	public User getUserInJSON() {

		User u = new User();
		u.setUsername("test001");
		u.setPassword("Metallica");
		u.setRole(User.ROLE_AGENT);
		
		return lcaService.login(u);

	}

	@POST
	@Path("/post")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response createUserInJSON(User u) {

		String result = "User saved : " + u;
		return Response.status(201).entity(result).build();
		
	}
	
}