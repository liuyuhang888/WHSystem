package com.WHSystem.Dao;

import com.WHSystem.entity.User;

import java.util.List;


public interface IUserDao {

    List<User> findAll();
    /**
     *
     * 功能描述:
     *
     * @param userId
     * @return: com.WHSystem.entity.User
     * @auther: liuyuhang
     * @date: 2020/2/19 17:46
     */
    User findbyId(String userId);
    /**
     *
     * 功能描述:
     *
     * @param: name
     * @return: com.WHSystem.entity.User
     * @auther: liuyuhang
     * @date: 2020/2/19 17:50
     */
    User findbyName(String name);
    /**
     *
     * 功能描述:
     * @param: user
     * @return: void
     * @auther: liuyuhang
     * @date: 2020/2/19 17:51
     */
    void saveUser(User user);

    void updateUser(User user);

    void deleteUser(User user);



}
