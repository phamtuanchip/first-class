package com.mobilecheckin.jdbcMappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.mobilecheckin.users.model.User;

@SuppressWarnings("rawtypes")
public class PassengerFlightMapper implements RowMapper{
	
	public static final String USER_USERNAME = "username";
	public static final String USER_PASSWORD = "password";
	public static final String USER_ROLE = "role";

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User u = new User();
		u.setUsername(rs.getString(USER_USERNAME));
		u.setPassword(rs.getString(USER_PASSWORD));
		u.setRole(rs.getString(USER_ROLE));		
		return u;
		
	}

}
