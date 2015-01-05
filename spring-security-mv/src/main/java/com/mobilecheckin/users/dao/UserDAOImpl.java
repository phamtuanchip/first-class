package com.mobilecheckin.users.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.mobilecheckin.jdbcMappers.UserMapper;
import com.mobilecheckin.users.model.User;


public class UserDAOImpl implements UserDAO {

	@Autowired
	private DataSource dataSource;
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public User findByUsername(String username) {

		String query = "SELECT username, password, role FROM users WHERE username = ?";
		
		User user = (User)jdbcTemplate.queryForObject(query, new Object[]{username}, new UserMapper());

		return user;
	}

	@Override
	public int save(User user) {
		String query = "INSERT INTO users (username, passowrd, role) VALUE (?,?,?)";
		
		Object[] args = new Object[]{user.getUsername(), user.getPassword(),user.getRole()};
		
		int out = jdbcTemplate.update(query, args);
		
		return out;
		
	}

	@Override
	public int update(User user) {
		String query = "UPDATE users SET (password = ?, role = ?) WHERE username = ? ";
		Object[] args = new Object[]{user.getPassword(), user.getRole(), user.getUsername()};
		
		int out = jdbcTemplate.update(query, args);
		
		return out;
	}

	@Override
	public void delete(String username) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<User> listAll() {
		// TODO Auto-generated method stub
		return null;
	}


}
