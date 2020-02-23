<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keyword" content="仓库管理，仓库管理系统">
    <meta name="description" content="仓库管理系统是仓库管理的首选。">
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/echarts/4.4.0-rc.1/echarts.min.js"></script>
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
                <a href="/product/productList" class="html2 ">
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
                <a href="#" class="active">
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
                <div class="container" style="margin-top: 85px">
                    <div class="row clearfix">
                        <div class="col-md-12 column">
                            <div id="main" style="width: 900px;height:600px;"></div>
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
    $(function () {

        $.get(
            "/product/getData",
            function(data) {
                var x = new Array();
                var y = new Array();
                for(var p in data){//遍历json数组时，这么写p为索引，0,1
                    x.push(data[p].cateogryName);
                    y.push(data[p].count);
                    zFun(x,y);
                }
            },
            "json"
        );



    // 柱状图

    var zChart = echarts.init(document.getElementById("main"));// 柱形图模板
    function zFun(x_data, y_data) {
        zChart.setOption({
            color : [ '#3398DB'],
            tooltip : {
                trigger : 'axis',
                axisPointer : { // 坐标轴指示器，坐标轴触发有效
                    type : 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            legend : {
                data : [ '当前库存量' ]
            },
            grid : {
                left : '3%',
                right : '20%',
                bottom : '20%',
                containLabel : true
            },
            xAxis : [ {
                type : 'category',
                data : x_data,
            } ],
            yAxis:[ {          //纵轴标尺固定
                type: 'value',
                scale: true,
                name: '库存量',
                max: 1000,
                min: 0,
                splitNumber:20,
                boundaryGap: [0.2, 0.2]
            } ],
            series : [ {
                name : '库存量',
                type : 'bar',
                itemStyle:{
                  normal:{
                      color: function (params) {
                            var colorList = ['#ff9e4a','#13ff17','#008dee','#56e9ff','#CF6DEE'];
                            return colorList[params.dataIndex]
                      }
                  }
                },
                barWidth : '30%',
                data : y_data
            } ]
        }, true);
    }

    });
</script>
</html>