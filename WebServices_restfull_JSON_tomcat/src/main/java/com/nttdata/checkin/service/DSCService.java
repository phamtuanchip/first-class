package com.nttdata.checkin.service;

import java.net.Socket;
import java.util.ArrayList;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import com.nttdata.checkin.modal.User;

 
public interface DSCService {
	 
	public User login(User u);
	 
	

}
