package com.bcgc.umedication.service;

import java.util.List;

import com.bcgc.umedication.model.User;

/**
 * Interface Service des Users
 */
public interface UserService
{ 
    public void addUser(User u);
    public void updateUser(User u);
    public List<User> listUsers();
    public User getUserById(int id);
    public User getUserByUsername(String name);
    public void removeUser(int id);
     
}