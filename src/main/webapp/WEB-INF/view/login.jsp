<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>登录</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/login.css">
</head>
<body>
    <!-- 主体 -->
    <div class="q">
        <div class="logo">
            <img src="/images/logo1.png" alt="">
        </div>        
        <div class="q-right">
            <div class="zuo">
                <img src="/images/zuo1.png" alt=""></div>
            <div class="you">
                <img src="/images/you1.png" alt=""></div>
            <form class="q-main" action="/user/login" method="post">
                <p class="q-p">用户登录</p>
                <input type="text" placeholder="昵称" name="username" class="usrname">
                <input type="password" placeholder="密码" name="password" class="psd">
                <%--<div class="number">
                    <input type="text" placeholder="验证码" name="yzm" class="yzm">
                </div>--%>
                <input type="submit" value="登录" class="sub">                
            </form>
        </div>
        <p class="footer">Copyright © 2019-2020Tencent All Rights Reserved</p>

    </div>
</body>

</html>