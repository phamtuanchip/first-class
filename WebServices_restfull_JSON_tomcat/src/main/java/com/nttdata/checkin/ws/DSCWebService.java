package com.nttdata.checkin.ws;

import java.net.Socket;
import java.util.ArrayList;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

@Path("/v1")
public interface DSCWebService {
	@GET
	public User login(User u);
	 
	

}
