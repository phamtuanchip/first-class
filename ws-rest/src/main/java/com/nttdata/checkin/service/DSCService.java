package com.nttdata.checkin.service;

import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;

import javax.naming.AuthenticationException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import com.nttdata.checkin.model.User;

 
public interface DSCService {
	 
	public boolean open()throws IOException;
	public User login(User u) throws AuthenticationException;
	 
	

}
