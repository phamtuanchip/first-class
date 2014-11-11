package com.nttdata.checkin.service.impl;

import java.io.IOException;

import javax.naming.AuthenticationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.nttdata.checkin.model.User;
import com.nttdata.checkin.model.UserMaper;
import com.nttdata.checkin.service.DSCService;

public class LCAServiceMock implements DSCService{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public User login(User u) throws AuthenticationException {
		String SQL = "select * from userTb where userName = ?";
		User user = (User)jdbcTemplate.queryForObject(SQL, 
				new Object[]{u.getUsername()}, new UserMaper());

		return user;
	}

	@Override
	public boolean open() throws IOException {
		// TODO Auto-generated method stub
		return false;
	}

}
