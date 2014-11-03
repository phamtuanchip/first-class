package com.nttdata.checkin.ws.rest;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.nttdata.checkin.ws.Passenger;

@Path("/json/passenger")
public class PassengerService {

	@GET
	@Path("/get")
	@Produces(MediaType.APPLICATION_JSON)
	public Passenger getPassengerInJSON() {

		Passenger p = new Passenger();
		 
		return p;

	}

	@POST
	@Path("/post")
	@Consumes(MediaType.APPLICATION_JSON)
	public Response createPassengerInJSON(Passenger p) {

		String result = "Passenger saved : " + p;
		return Response.status(201).entity(result).build();
		
	}
	
}