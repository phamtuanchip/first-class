package com.sivalabs.mybatisdemo.mappers;

import java.util.List;
import com.sivalabs.mybatisdemo.domain.User;

public interface UserMapper 
{

 public void insertUser(User user);

 public User getUserById(Integer userId);
 
 public User getUserByName(String name);

 public List<User> getAllUsers();

 public void updateUser(User user);

 public void deleteUser(Integer userId);
 public void deleteUserByEmail(String email);

}