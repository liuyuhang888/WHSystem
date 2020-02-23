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
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/font/iconfont.css">
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
                <a href="/index" class="html0 ">
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
                <a href="/product/productList" class="html2 active">
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
                <a href="/user/findUserList" class="">
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
                <div class="container-fluid" style="margin-top: 85px">
                    <div class="row clearfix">
                        <div class="col-md-12 column">
<%--                            <button type="button" class="btn btn-success btn-sm" style="margin-bottom: 10px">新增用户</button>--%>
                            <table class="table table-hover table-bordered">
                                <thead>
                                <tr>
                                    <th>
                                        产品id
                                    </th>
                                    <th>
                                        产品名称
                                    </th>
                                    <th>
                                        产品描述
                                    </th>
                                    <th>
                                        产品类别
                                    </th>
                                    <th>
                                        产品单价
                                    </th>
                                    <th>
                                        产品经销商
                                    </th>
                                    <th>
                                        当前库存
                                    </th>
                                    <th>
                                        入库时间
                                    </th>
                                    <th>
                                        最近修改时间
                                    </th>
                                    <th>
                                        操作
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="product" items="${productList}">
                                    <tr class="success">
                                        <td>
                                                ${product.productId}
                                        </td>
                                        <td>
                                                ${product.productName}
                                        </td>
                                        <td>
                                                ${product.productDesc}
                                        </td>
                                        <td>
                                                ${product.productCategoryName}
                                        </td>
                                        <td>
                                                ${product.productPrice}
                                        </td>
                                        <td>
                                                ${product.venderName}
                                        </td>
                                        <td>
                                                ${product.productStock}
                                        </td>
                                        <td>
                                                ${product.createTime}
                                        </td>
                                        <td>
                                                ${product.updateTime}
                                        </td>
                                        <td>
                                            <a href="/product/changeProductPage?productId=${product.productId}" type="button" class="btn btn-info btn-sm" style="margin-right: 10px">增加库存</a>

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
<script src="/js/cal.js"></script>

</html>