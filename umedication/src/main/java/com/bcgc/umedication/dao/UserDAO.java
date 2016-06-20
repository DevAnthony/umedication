package com.bcgc.umedication.dao;

import java.util.List;

import com.bcgc.umedication.model.User;

/**
 * Interface DAO des users.
 */
public interface UserDAO
{
    public void addUser(User u);
    public void updateUser(User u);
    public List<User> listUsers();
    public User getUserById(int id);
    public User getUserByUsername(String name);
    public void removeUser(int id);
}