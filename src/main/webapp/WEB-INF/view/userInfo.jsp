<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keyword" content="仓库管理，仓库管理系统">
    <meta name="description" content="仓库管理系统是仓库管理的首选。">
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/font/iconfont.css">
    <link rel="stylesheet" href="/css/putIn.css">
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
                <a href="/index" class="html0">
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
                <a href="#" class="active">
                    <span class="iconfont icon-user"></span>
                    <em>用户中心</em>
                </a>
            </li>
        </ul>
    </div>
    <div class="right">
        <div class="top">
            <div class="top_btn">
                <i id="name">${sessionScope.user.getUsername()}</i>
                <a href="/user/logout" class="iconfont icon-tuichu"></a>
            </div>
        </div>
        <div class="right_content">

            <div src="html1.html" name="content" class="iframe">
                <%--内容页开始--%>
                    <div class="container" style="margin-top: 85px">
                        <div class="row clearfix">
                            <div class="col-md-12 column">




                                <form action="/user/addUser" method="post">

                                    <center><a style="margin-top: 30px;" id="modal-937403" href="#modal-container-937403" role="button" class="btn btn-success btn-large" data-toggle="modal">添加用户</a></center>

                                    <div class="modal fade" id="modal-container-937403" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4 class="modal-title" id="myModalLabel2">
                                                        添加用户
                                                    </h4>
                                                </div>
                                                <div class="modal-body">


                                                    <c:import url="/WEB-INF/view/add/addUser.jsp"></c:import>


                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="submit" class="btn btn-primary">保存</button>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </form>




                                <table class="table table-hover table-bordered">
                                    <thead>
                                    <tr>
                                        <th>
                                            用户id
                                        </th>
                                        <th>
                                            用户名
                                        </th>
                                        <th>
                                            用户注册时间
                                        </th>
                                        <th>
                                            最近修改时间
                                        </th>
                                        <th colspan="2">
                                            操作
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                   <c:forEach var="user1" items="${userList}">
                                    <tr class="success">
                                        <td>
                                            ${user1.userId}
                                        </td>
                                        <td>${user1.username}
                                        </td>
                                        <td>
                                            ${user1.createTime}
                                        </td>
                                        <td>
                                             ${user1.updateTime}
                                        </td>
                                        <td>
                                            <c:if test="${user1.userId == sessionScope.user.userId}">
                                            <a href="/user/changePasswordPage?userId=${user1.userId}" type="button" class="btn btn-info btn-sm" style="margin-right: 10px">修改密码</a>
                                            </c:if>
                                        </td>
                                        <td>
                                            <a href="/user/deleteUserPage?userId=${user1.userId}" type="button" class="btn btn-danger btn-sm" style="margin-right: 10px">删除用户</a>
                                        </td>
                                    </tr>
                                   </c:forEach>
                                    </tbody>
                                </table>
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
</div>
</body>

<script>
    window.onload = function () {
        var msg = "${msg}";
        if (msg != null && msg != "" ) {
            alert(msg);
        }

    }
</script>
</html>