package com.sivalabs.mybatisdemo;

import java.util.List;

import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import com.sivalabs.mybatisdemo.domain.User;
import com.sivalabs.mybatisdemo.service.UserService;


public class UserServiceTest
{
	private static UserService userService;

	@BeforeClass
	public static void setup() 
	{
		userService = new UserService();
	}

	@AfterClass
	public static void teardown() 
	{
		List<User> users = userService.getAllUsers();
	Assert.assertNotNull(users);
	for (User user : users) 
	{
		userService.removeUser(user);
	}
		
		userService = null;
	}

	

	@Test
	public void testInsertUser() 
	{
		for (int i =0 ; i < 4; i++) {
		User user = new User();
		//user.setUserId(i);
		user.setEmailId("test_email_"+i+"@gmail.com");
		user.setPassword("secret");
		user.setFirstName("TestFirstName" + System.currentTimeMillis());
		user.setLastName("TestLastName");

		userService.insertUser(user);
		
		//Assert.assertTrue(user.getUserId() != 0);
		User createdUser = userService.getUserByName(user.getFirstName());
		Assert.assertNotNull(createdUser);
		Assert.assertEquals(user.getEmailId(), createdUser.getEmailId());
		Assert.assertEquals(user.getPassword(), createdUser.getPassword());
		Assert.assertEquals(user.getFirstName(), createdUser.getFirstName());
		Assert.assertEquals(user.getLastName(), createdUser.getLastName());
		}
	}
	@Test
	public void testGetUserByName() 
	{
		
		User user = new User();
		long timestamp = System.currentTimeMillis();
		user.setEmailId(System.currentTimeMillis() + "@gmail.com");
		user.setPassword("secret");
		user.setFirstName("pham" + timestamp);
		user.setLastName("tuan");
		userService.insertUser(user);
		
		user = userService.getUserByName("pham" + timestamp);
		Assert.assertNotNull(user);
	}
	@Test
	public void testRemoveUserByEmail() 
	{
		
		User user = new User();
		 
		user.setEmailId(System.currentTimeMillis() +"@gmail.com");
		user.setPassword("secret");
		user.setFirstName("pham");
		user.setLastName("tuan");
		userService.insertUser(user);
		
		userService.removeUser(user);
		Assert.assertNotNull(user);
	}
	@Test
	public void testGetUserById() 
	{
		 
	}

	@Test
	public void testGetAllUsers() 
	{
		List<User> users = userService.getAllUsers();
		Assert.assertNotNull(users);
		for (User user : users) 
		{
			System.out.println(user);
		}

	}
	@Test
	public void testUpdateUser() 
	{
		User user = new User();
		long timestamp = System.currentTimeMillis();
		user.setEmailId(System.currentTimeMillis() +"@gmail.com");
		user.setPassword("secret");
		user.setFirstName("pham" + timestamp);
		user.setLastName("tuan");
		userService.insertUser(user);
		
		
		user = userService.getUserByName("pham" +timestamp);
		user.setFirstName("TestFirstName"+timestamp);
		user.setLastName("TestLastName"+timestamp);
		userService.updateUser(user);
		User updatedUser = userService.getUserById(user.getUserId());
		Assert.assertNotNull(updatedUser);
		Assert.assertEquals(user.getFirstName(), updatedUser.getFirstName());
		Assert.assertEquals(user.getLastName(), updatedUser.getLastName());
	}

	@Test
	public void testDeleteUser() 
	{
		User user = new User();
		long timestamp = System.currentTimeMillis();
		user.setEmailId(System.currentTimeMillis() +"@gmail.com");
		user.setPassword("secret");
		user.setFirstName("pham" +timestamp);
		user.setLastName("tuan");
		userService.insertUser(user);
		 user = userService.getUserByName("pham" +timestamp);
		userService.deleteUser(user.getUserId());
		User deletedUser = userService.getUserByName("pham" +timestamp);
		Assert.assertNull(deletedUser);   

	}
}