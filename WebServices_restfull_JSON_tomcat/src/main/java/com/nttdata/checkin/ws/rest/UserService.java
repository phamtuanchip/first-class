package com.nttdata.checkin.ws.rest;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.nttdata.checkin.ws.User;

@Path("/json/user")
public class UserService {

	@GET
	@Path("/get")
	@Produces(MediaType.APPLICATION_JSON)
	public User getUserInJSON() {

		User u = new User();
		u.setUsername("test001");
		u.setPassword("Metallica");
		u.setRole(User.ROLE_AGENT);
		return u;

	}

	@POST
	@Path("/post")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response createUserInJSON(User u) {

		String result = "User saved : " + u;
		return Response.status(201).entity(result).build();
		
	}
	
}