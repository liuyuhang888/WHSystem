package com.WHSystem.Dao;


import com.WHSystem.entity.User;
import com.WHSystem.utils.MD5Util;
import com.WHSystem.utils.RodomIdUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-mybatis.xml","classpath:springmvc.xml"})
public class IUserDaoTest {

    @Autowired
    private IUserDao userDao;

    @Test
    public void findAll() {
        List<User> all = userDao.findAll();
        System.out.println(all);
    }

    @Test
    public void testSaveUser() {
        User user = new User();
        user.setUsername("admin");
        user.setAvatar("ccc");
        try {
            user.setPassword(MD5Util.getMd5("admin",user.getUsername()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        user.setUserId(RodomIdUtil.getRodomId());
        userDao.saveUser(user);

    }
}