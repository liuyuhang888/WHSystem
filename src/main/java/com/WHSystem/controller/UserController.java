package com.WHSystem.controller;

import com.WHSystem.Exception.LoginException;
import com.WHSystem.entity.User;
import com.WHSystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    /**
     *
     * 功能描述:  查询所有用户信息
     *
     * @param:  List<User>
     * @return:
     * @auther:
     * @date: 2020/2/8 20:07
     */
    @RequestMapping("/findUserList")
    public String findUserList(Model model,HttpServletRequest request){
        List<User> userList = userService.findUserList();
        model.addAttribute("userList", userList);
        return "userInfo";
    }
    /**
     *
     * 功能描述:  登录系统
     *
     * @param: session
     * @param username
     * @param password
     * @return: java.lang.String
     * @auther:
     * @date: 2020/2/9 9:17
     */
    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam(required = true) String username,@RequestParam(required = true) String password){
        if (session.getAttribute("user") != null){
            return "index";

        }
            boolean flag = false;
            try {
                flag =  userService.login(username,password);
            } catch (LoginException e) {
                e.printStackTrace();
            }
            //判断是否登录成功

            if (flag){
                User userByName = userService.findUserByName(username);
                session.setAttribute("user", userByName);

                return "index";
            }else{
                return "login";
            }



    }

    /**
     * 功能描述: 修改密码
     * @param password
     * @param oldpassword
     * @param session
     * @return
     */
    @RequestMapping("/changePassword")
    public String changePassword(@RequestParam(required = true)String oldpassword, String password, HttpSession session, HashMap map, HttpServletRequest request){

        request.setAttribute("isChangePassword", "true");

        User user = (User)session.getAttribute("user");
        try {
            userService.changePassword(user,oldpassword,password);
        }catch (Exception e){
            e.printStackTrace();
            map.put("msg", e.getMessage());
            return "forward:/user/findUserList";
        }
        map.put("msg", "修改密码成功！");
        return "forward:/user/findUserList";
    }
    /**
     *
     * 功能描述: 添加用户
     *
     * @param:user
     * @param map
     * @return: java.lang.String
     * @auther:
     * @date: 2020/2/9 11:33
     */
    @RequestMapping("/addUser")
    public String addUser(User user,@RequestParam(required = true) String passwordr,Map map){
        if (!passwordr.equals(user.getPassword())){
            map.put("msg", "密码和确认密码不一致");
            return "forward:/user/findUserList";
        }
        try {
            userService.addUser(user);
        }catch (Exception e){
            map.put("msg", e.getMessage());
            return "forward:/user/findUserList";
        }
        map.put("msg", "添加用户成功！！");
        return "forward:/user/findUserList";
    }
    /**
     *
     * 功能描述:  登出用户
     *
     * @param:  session
     * @return: java.lang.String
     * @auther:
     * @date: 2020/2/9 11:49
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.setAttribute("user", null);

        return "login";
    }

    @RequestMapping("/changePasswordPage")
    public String changePassword(String userId, Map map){
       User user =  userService.findUserById(userId);
       map.put("userid", user);
       return "updata/updatePassword";
    }
    @RequestMapping("/deleteUser")
    public String deleteUser(User user, Map map){
        try {
            userService.deleteUser(user);
        } catch (Exception e) {
            map.put("msg", "删除用户失败，请检查该用户密码");
            return "forward:/user/findUserList";
        }
        map.put("msg", "删除用户成功！");
        return "forward:/user/findUserList";
    }
    @RequestMapping("/deleteUserPage")
    public String deleteUserPage(String userId, Map map){
        map.put("userId", userId);
        return "delete/deleteUser";
    }

}
