package com.WHSystem.service;


import com.WHSystem.Exception.LoginException;
import com.WHSystem.entity.User;

import java.util.List;

public interface UserService {
    List<User> findUserList();

    boolean login(String username, String password) throws LoginException;

    User findUserByName(String username);

    void changePassword(User user, String password, String newpassword) throws  Exception;

    void addUser(User user) throws  Exception;

    User findUserById(String userId);

    void deleteUser(User user) throws  Exception;
}
