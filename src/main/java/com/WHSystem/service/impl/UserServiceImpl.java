package com.WHSystem.service.impl;

import com.WHSystem.Dao.IUserDao;
import com.WHSystem.Exception.LoginException;
import com.WHSystem.entity.User;
import com.WHSystem.service.UserService;
import com.WHSystem.utils.MD5Util;
import com.WHSystem.utils.RodomIdUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 刘宇航
 * @author 刘宇航
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private IUserDao UserDao;

    @Override
    public List<User> findUserList() {
        return  UserDao.findAll();
    }

    @Override
    public boolean login(String username, String password) throws LoginException {
        //使用username当盐生成加密key
        String key = null;
        try {
            key = MD5Util.getMd5(password, username);
        } catch (Exception e) {
            e.printStackTrace();
        }
        User findbyName = UserDao.findbyName(username);
        if(findbyName == null){
            throw new LoginException("账号或密码错误");

        }

        if (!key.equals(findbyName.getPassword())){
            throw new LoginException("账号或密码错误");

        }

        return true;
    }

    @Override
    public User findUserByName(String username) {
        return UserDao.findbyName(username);
    }

    @Override
    public void changePassword(User user,String password, String newpassword)  throws Exception {
        boolean login =false;
             //判断旧密码是否正确
             login = login(user.getUsername(), password);

        if (login){
            user.setPassword(MD5Util.getMd5(newpassword, user.getUsername()));
            //修改密码，如有异常则修改失败
            UserDao.updateUser(user);
        }


    }

    @Override
    public void addUser(User user) throws Exception{
        user.setUserId(RodomIdUtil.getRodomId());
        user.setPassword(MD5Util.getMd5(user.getPassword(), user.getUsername()));
        UserDao.saveUser(user);
    }

    @Override
    public User findUserById(String userId) {
        return UserDao.findbyId(userId);
    }

    @Override
    public void deleteUser(User user)  throws  Exception{
        boolean login =false;
        //判断旧密码是否正确
        login = login(user.getUsername(), user.getPassword());

        if (login){
            UserDao.deleteUser(user);
        }
    }
}
