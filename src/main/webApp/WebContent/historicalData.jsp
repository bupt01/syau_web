<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!doctype html>
<html class="no-js" lang="">
<head>
	<meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>西安邮电大学智慧农业监控系统</title>
  <meta name="description" content="">
  <!-- <meta name="viewport" content="width=device-width, initial-scale=0.4"> -->
  <!-- Place favicon.ico in the root directory -->
  <link rel="icon" href="./favicon.ico" type="image/x-icon">

  <link rel="stylesheet" href="css/normalize.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebContent/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebContent/css/bootstrap-datetimepicker.min.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebContent/css/main.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebContent/css/historicalData.css">
  <script src="${pageContext.request.contextPath}/WebContent/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	 <script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
	 <script src="http://apps.bdimg.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->

	<!--[if lte IE 8]>
	    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->

	<!-- Add your site or application content here -->
	<div role="container">
    <header role="header" class="header">
    	<!-- header-box-start -->
      <div class="header-box">
        <div class="logo-box"><img src="./img/logo.png"></div>
        <div class="info-box">
          <span><img src='./img/clock.png'><span class="date"></span></span>
          <span class="user"><img src="./img/user2.png">欢迎您：<span class="userName">12345</span></span>
          <span class="layout"><img src="./img/key.png"><a href="#">注销</a></span>
        </div>
        <!-- nav-box-start -->
        <div class="nav-box">
          <ul class="nav nav-pill nav-justified">
            <li><a href="main.html">首 页</a></li>
            <li class="dropdown">
              <a class="dropdown-toggle active" data-toggle="dropdown" href="">日光温室<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="eMonitor.html">环境监控</a></li>
                <li><a href="liveData.html">数据实况</a></li>
                <li><a href="analysisData.html">数据分析</a></li>
                <li class="active"><a href="">历史数据</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="">视频监控<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="liveVideo.html">实时视频监控</a></li>
                <li><a href="videoView.html">监控图像浏览</a></li>
                <li><a href="">摄像监控控制</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="">农业生产过程记录<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="farmingActivities.html">农事活动</a></li>
                <li><a href="pesticideUsing.html">农药使用</a></li>
                <li><a href="fertilizerNotes.html">施肥记录</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="">办公自动化<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="">日光温室管理</a></li>
                <li><a href="">用户管理</a></li>
                <li><a href="">公告</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="">大数据系统<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="">#1</a></li>
                <li><a href="">#2</a></li>
                <li><a href="">#3</a></li>
              </ul>
            </li>
          </ul>
        </div>
        <!-- nav-box-end -->
      </div>
      <!-- header-box-end -->
    </header>
    <main role="main" class="main">
    	<!-- main-box-start -->
      <div class="main-box">
      	<!-- main-inner-start -->
        <div class="main-inner">
        	<!-- main-title-start -->
        	<div class="main-title"><img src="./img/title.png">
          	<span>数据分析</span>
          	<div class="btns">
            	<span class="btn active">历史数据</span><i class="split"></i>
            	<span class="btn">数据分析</span><i class="split"></i>
            	<span class="btn">数据实况</span>
          	</div>
          </div>
          <!-- main-title-end -->
          <!-- operation-box-start -->
          <form action="" method="" class="operation-box">
            <div class="operation">
            	<label>选择设备：</label>
              <select class="room-select">
                <option>日光温室1</option><option>日光温室2</option><option>日光温室3</option>
              </select>
              <label>时间：</label>
              <input type="text" value="" class="input_date" data-date-format="yyyy-mm-dd" readonly> - 
              <input type="text" value="" class="input_date" data-date-format="yyyy-mm-dd" readonly>
              <div class="search-btn">查 询</div>
              <div class="download-btn">下 载</div>
            </div>
          </form>
          <!-- operation-box-end -->
          <!-- data-list-box-start -->
          <div class="data-list-box">
          <%--<div class="data-content-box">--%>
            <!-- title-start -->
            <div class="data-list-title">
              <table>
                <tr><th>接收时间</th><th>空气温度</th><th>空气湿度</th><th>土壤含水量</th><th>土壤温度</th><th>光照强度</th><th>二氧化碳</th></tr>
              </table>
            </div>
            <!-- title-end -->
            <!-- content-start -->
            <div class="list-content-box">
            <%--<div class="data-list-box">--%>
                <c:forEach items="${data}" var="d">
              <table class="table table-striped">
                <tr><td>${d.createTime}</td><td>${d.temperature}</td><td>${d.humidity}</td><td>12</td><td>${d.lightIntensity}</td><td>0.7</td><td>558.5</td></tr>
                <%--<tr><th>2016-05-09 00:00</th><th>18.65</th><th>65</th><th>12</th><th>20.3</th><th>0.7</th><th>558.5</th></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
                <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>12</td><td>20.3</td><td>0.7</td><td>558.5</td></tr>--%>
              </table>
                </c:forEach>
            </div>
            <!-- content-end -->
            <div class="list-footer-box">
              <ul class="pagination">
                <li class="disabled"><a href="#">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
              <span class="list-info">显示条目 1 - 10 共 21 条</span>
            </div>
          </div>
          <!-- data-list-box-end -->
        </div>
        <!-- main-inner-end -->
      </div>
      <!-- main-box-end -->
    </main>
    <footer role="footer" class="footer">
      <div>版权所有：西安邮电大学</div>
    </footer>
	</div>
	<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
	<script src="js/plugins.js"></script>
  <script type="text/javascript" src="./js/bootstrap-datetimepicker.min.js"></script>
	<script src="js/main.js"></script>
	<script type="text/javascript" src="js/util.js"></script>
	<script type="text/javascript" src="js/view.js"></script>
  
  <script type="text/javascript" src="js/historicalData.js"></script>
	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
	<script>
    (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
    function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    e.src='https://www.google-analytics.com/analytics.js';
    r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
    ga('create','UA-XXXXX-X','auto');ga('send','pageview');
	</script>
</body>
</html>
