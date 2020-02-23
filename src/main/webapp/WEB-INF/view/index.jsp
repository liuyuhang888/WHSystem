<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keyword" content="仓库管理，仓库管理系统">
    <meta name="description" content="仓库管理系统是仓库管理的首选。">
    <link rel="stylesheet" href="/css/cal.css">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/font/iconfont.css">
    <link rel="stylesheet" href="/css/bg.css">
    <title>仓库管理系统</title>
</head>

<body>
<div class="warp clearfix">
    <div class="left">
        <div class="logo">
            <img src="/images/logo.png" alt=""><br>
            <i>仓库管理系统</i>
        </div>
        <ul class="left_content">
            <li>
                <a href="/index" class="html0 active" >
                    <span class="iconfont icon-shouye"></span>
                    <em>首页</em>
                </a>
            </li>
            <li>
                <a href="/product/inputList" class="html1 ">
                    <span class="iconfont icon-rukuguanli-"></span>
                    <em>入库管理</em>
                </a>
            </li>
            <li>
                <a href="/product/productList" class="html2">
                    <span class="iconfont icon-05_kucunguanli"></span>
                    <em>库存管理</em>
                </a>
            </li>
            <li>
                <a href="/product/outPutList">
                        <span class="iconfont icon-chukuguanli
                    "></span>
                    <em>出库管理</em>
                </a>
            </li>
            <li>
                <a href="/product/chartPage">
                    <span class="iconfont icon-tongjibaobiao"></span>
                    <em>报表统计</em>
                </a>
            </li>
            <li>
                <a href="/user/findUserList">
                    <span class="iconfont icon-user"></span>
                    <em>用户中心</em>
                </a>
            </li>
        </ul>
    </div>
    <div class="right">
        <div class="top">
            <div class="top_btn">
                <i id="name">${user.getUsername()}</i>
                <a href="/user/logout" class="iconfont icon-tuichu"></a>
            </div>
        </div>
        <div class="right_content">

            <div src="html1.html" name="content" class="iframe">
                <%--内容页开始--%>

                    <div class="weather" style="position:absolute;right:50px;top:125px;">
                        <div id="weather-view-he"></div>
                    </div>
                    <script>
                        WIDGET = {ID: 'KflQQ6aZrg'};
                    </script>
                    <script type="text/javascript" src="https://apip.weatherdt.com/view/static/js/r.js?v=1111"></script>

                    <div class="cal">


                        <div class="calendar" style="position: absolute; top:80px; left: 300px">
                            <div class="header">
                                <a data-action="prev-month" href="javascript:void(0)" title="Previous Month"><i></i></a>
                                <div class="text" data-render="month-year"></div>
                                <a data-action="next-month" href="javascript:void(0)" title="Next Month"><i></i></a>
                            </div>
                            <div class="months" data-flow="left">
                                <div class="month month-a">
                                    <div class="render render-a"></div>
                                </div>
                                <div class="month month-b">
                                    <div class="render render-b"></div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
                <%--内容页结束--%>
            </div>

        </div>
        <div class="bottom">
            <div class="bottom_warp">
                <span><a href="#">联系我们</a></span>
                <span><a href="#">内容介绍</a></span>
            </div>
        </div>
    </div>

</body>
<script src="/js/cal.js"></script>

</html>