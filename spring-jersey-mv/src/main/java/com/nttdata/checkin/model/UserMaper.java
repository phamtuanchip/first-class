package com.nttdata.checkin.model;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
public class UserMaper implements RowMapper<User> {
	public static final String USER_NAME = "";
	public static final String PASS_WORD = "";
	public static final String DESCRIPTION = "";
	public static final String ROLE = "";
	
	@Override
	public User mapRow(ResultSet rs, int rowNumb) throws SQLException {
		User u = new User();
		u.setUsername(rs.getString(USER_NAME));
		u.setPassword(rs.getString(PASS_WORD));
		u.setRole(rs.getString(ROLE));
		u.setDescription(rs.getString(DESCRIPTION));
		return u;
	}

}
