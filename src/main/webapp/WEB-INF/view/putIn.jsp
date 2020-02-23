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
                <a href="/index" class="html0 ">
                    <span class="iconfont icon-shouye"></span>
                    <em>首页</em>
                </a>
            </li>
            <li>
                <a href="#" class="html1 active">
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

                <form action="/product/addProduct" method="post">

                <center><a style="margin-top: 30px;" id="modal-937403" href="#modal-container-937403" role="button" class="btn btn-success btn-large" data-toggle="modal">产品入库</a></center>

                    <div class="modal fade" id="modal-container-937403" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h4 class="modal-title" id="myModalLabel2">
                                        产品入库
                                    </h4>
                                </div>
                                <div class="modal-body">


                                    <c:import url="/WEB-INF/view/add/addProduct.jsp"></c:import>


                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="submit" class="btn btn-primary">保存</button>
                                </div>
                            </div>

                        </div>

                    </div>
                    </form>









                    <div class="container-fluid" style="margin-top: 85px">
                        <div class="row clearfix">
                            <div class="col-md-12 column">




                                <form action="/vender/addVender" method="post">

                                    <a id="modal-937401" href="#modal-container-937401" role="button" class="btn btn-success btn-small" data-toggle="modal">新增产品经销商</a>

                                    <div class="modal fade" id="modal-container-937401" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4 class="modal-title" id="myModalLabel1">
                                                        新增产品经销商
                                                    </h4>
                                                </div>
                                                <div class="modal-body">
                                                    <c:import url="/WEB-INF/view/add/addVender.jsp"></c:import>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="submit" class="btn btn-primary">保存</button>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </form>







                                <table class="table table-hover table-bordered">
                                    <caption>
                                        经销商表
                                    </caption>
                                    <thead>
                                    <tr>
                                        <th>
                                            经销商id
                                        </th>
                                        <th>
                                            经销商名称
                                        </th>
                                        <th>
                                            经销商描述
                                        </th>
                                        <th>
                                            入住时间
                                        </th>
                                        <th>
                                            修改时间
                                        </th>
                                        <th>
                                            操作
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="vender" items="${venderList}">
                                        <tr class="success">
                                            <td>
                                                    ${vender.venderId}
                                            </td>
                                            <td>
                                                    ${vender.venderName}
                                            </td>
                                            <td>
                                                    ${vender.venderDesc}
                                            </td>
                                            <td>
                                                    ${vender.createTime}
                                            </td>
                                            <td>
                                                    ${vender.updateTime}
                                            </td>
                                            <td>
                                                <a href="/vender/changeVenderPage?venderId=${vender.venderId}" type="button" class="btn btn-info btn-sm" style="margin-right: 10px">修改经销商信息</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <hr>
                        <div class="row clearfix">
                            <div class="col-md-12 column">

                                <form action="/productCategory/addCategory" method="post">

                                <a id="modal-937400" href="#modal-container-937400" role="button" class="btn btn-success btn-small" data-toggle="modal">新增产品分类</a>

                                <div class="modal fade" id="modal-container-937400" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h4 class="modal-title" id="myModalLabel">
                                                    新增产品分类
                                                </h4>
                                            </div>
                                            <div class="modal-body">


                                                <c:import url="/WEB-INF/view/add/addProductCategory.jsp"></c:import>


                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="submit" class="btn btn-primary">保存</button>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                </form>



                                <table class="table table-hover table-bordered">
                                    <caption>
                                        产品分类表
                                    </caption>
                                    <thead>
                                    <tr>
                                        <th>
                                            产品分类id
                                        </th>
                                        <th>
                                            产品分类名称
                                        </th>
                                        <th>
                                            创建时间
                                        </th>
                                        <th>
                                            修改时间
                                        </th>

                                        <th>
                                            操作
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="productCategory" items="${productCategoryList}">
                                        <tr class="success">
                                            <td>
                                                    ${productCategory.productCategoryId}
                                            </td>
                                            <td>
                                                    ${productCategory.productCategoryName}
                                            </td>
                                            <td>
                                                    ${productCategory.createTime}
                                            </td>
                                            <td>
                                                    ${productCategory.updateTime}
                                            </td>
                                            <td>
                                                <a href="/productCategory/changeCategoryPage?productCategoryId=${productCategory.productCategoryId}" type="button" class="btn btn-info btn-sm" style="margin-right: 10px">修改产品分类</a>
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
        <a href="#" style="text-align: center; display: block; position: fixed; bottom: 60px;left: 20px; height:80px;width: 80px;background:url('/images/bj3.jpg'); opacity: 0.5; color: white;line-height: 80px;" >返回顶部</a>

    </div>
</div>
</body>
<script src="/js/cal.js"></script>

</html>