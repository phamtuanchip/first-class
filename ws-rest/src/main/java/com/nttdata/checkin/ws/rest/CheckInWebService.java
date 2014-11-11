package com.nttdata.checkin.ws.rest;

import javax.naming.AuthenticationException;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.nttdata.checkin.exception.NoLCAImplementation;
import com.nttdata.checkin.model.Passenger;
import com.nttdata.checkin.model.User;
import com.nttdata.checkin.service.impl.LCA01ServiceFactory;
import com.nttdata.checkin.service.impl.LCA01ServiceMockFactory;

@Path("/json")
@Component
public class CheckInWebService {
	 
	@Autowired
	private LCA01ServiceFactory lcaServiceF;
	
	@Autowired
	private LCA01ServiceMockFactory lcaServiceM;
	
	@GET
	@Path("/user/get")
	@Produces(MediaType.APPLICATION_JSON)
	public User getUserInJSON() throws AuthenticationException, NoLCAImplementation {
		
		User u = new User();
		u.setUsername("test001");
		u.setPassword("Metallica");
		u.setRole(User.ROLE_AGENT);
	 
		try {
			 if(lcaServiceF != null)
				 lcaServiceF.getDSCService().login(u);
			 else if(lcaServiceM != null)
				lcaServiceM.getDSCService().login(u); 
			 else throw new NoLCAImplementation("No implemetation for LCA Service, please check applicationContext.xml injection");
		} catch (AuthenticationException e) {
			e.printStackTrace();
			throw e;
		}
		
		return u;

	}

	@GET
	@Path("/passenger/get")
	@Produces(MediaType.APPLICATION_JSON)
	public Passenger getPassengerInJSON() {

		Passenger p = new Passenger();
		 
		return p;

	}
	@POST
	@Path("/post")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response createUserInJSON(User u) {

		String result = "User saved : " + u;
		return Response.status(201).entity(result).build();
		
	}
	
}