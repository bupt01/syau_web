<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>西安邮电大学智慧农业监控系统</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=0.4">
        <!-- Place favicon.ico in the root directory -->
        <link rel="icon" href="./favicon.ico" type="image/x-icon" />

        <link rel="stylesheet" href="${pageContext.request.contextPath}/WebContent/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebContent/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebContent/css/main.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WebContent/css/eMonitor.css">
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
                <div class="header-box">
                    <div class="logo-box"><img src="${pageContext.request.contextPath}/WebContent/img/logo.png"></div>
                    <div class="info-box">
                        <span><img src='${pageContext.request.contextPath}/WebContent/img/clock.png'><span class="date"></span></span>
                        <span class="user"><img src="${pageContext.request.contextPath}/WebContent/img/user2.png">欢迎您：<span class="userName">12345</span></span>
                        <span class="layout"><img src="${pageContext.request.contextPath}/WebContent/img/key.png"><a href="#">注销</a></span>
                    </div>
                    <div class="nav-box">
                        <ul class="nav nav-pill nav-justified">
                            <li><a href="main.html">首 页</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle active" data-toggle="dropdown" href="">日光温室<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li  class="active"><a href="">环境监控</a></li>
                                    <li><a href="liveData.html">数据实况</a></li>
                                    <li><a href="analysisData.html">数据分析</a></li>
                                    <li><a href="historicalData.html">历史数据</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="">视频监控<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="liveVideo.html">实时视频监控</a></li>
                                    <li><a href="videoView.html">监控图像浏览</a></li>
                                    <li><a href="videoControl.html">摄像监控控制</a></li>
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
                </div>
            </header>
            <main role="main" class="main">
                <div class="main-box">
                    <div class="main-left">
                        <div class="left-title">温室列表</div>
                        <div class="nav">
                            <ul class="nav nav-pill nav-stacked">
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="">温室列表<span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="">日光温室 1</a></li>
                                        <div class="split"></div>
                                        <li><a href="">日光温室 2</a></li>
                                        <div class="split"></div>
                                        <li><a href="">日光温室 3</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="main-right">
                        <div class="right-title"><img src="${pageContext.request.contextPath}/WebContent/img/title.png"><span>日光温室 1</span>实况</div>
                        <div class="video-box item">
                            <div class="item-title"><img src="${pageContext.request.contextPath}/WebContent/img/main_right_tit1.gif">视频监控</div>
                            <div class="video">
                                <video src="${pageContext.request.contextPath}/WebContent/The.Big.Bang.mp4" controls="controls"></video>
                            </div>
                        </div>
                        <div class="data-box item">
                            <div class="item-title"><img src="${pageContext.request.contextPath}/WebContent/img/main_right_tit4.png">数据实况 <span class="time"></span></div>
                            <ul>
                                <li class="dItem">
                                    <img src="${pageContext.request.contextPath}/WebContent/img/air_temperature.png">
                                    <div class="title">空气温度</div>
                                    <div class="data">${data.temperature}</div>
                                </li>
                                <li class="dItem">
                                    <img src="${pageContext.request.contextPath}/WebContent/img/air_humidity.png">
                                    <div class="title">空气湿度</div>
                                    <div class="data">${data.humidity}</div>
                                </li>
                                <li class="dItem">
                                    <img src="${pageContext.request.contextPath}/WebContent/img/soil_humidity.png">
                                    <div class="title">土壤含水量</div>
                                    <div class="data">55.8 %</div>
                                </li>
                                <li class="dItem">
                                    <img src="${pageContext.request.contextPath}/WebContent/img/soil_temperature.png">
                                    <div class="title">土壤温度</div>
                                    <div class="data">19.7 ℃</div>
                                </li>
                                <li class="dItem">
                                    <img src="${pageContext.request.contextPath}/WebContent/img/light.png">
                                    <div class="title">光照强度</div>
                                    <div class="data">${data.lightIntensity}Klum</div>
                                </li>
                                <li class="dItem">
                                    <img src="${pageContext.request.contextPath}/WebContent/img/co2.png">
                                    <div class="title">二氧化碳</div>
                                    <div class="data">329</div>
                                </li>
                           </ul>
                        </div>
                        <div class="setting-box item">
                           <div class="item-title"><img src="${pageContext.request.contextPath}/WebContent/img/main_right_tit2.gif">状态与设置</div>
                            <ul>
                                <li>
                                    <div class="picture"><img src="${pageContext.request.contextPath}/WebContent/img/icon_img1.png"></div>
                                    <div class="setting-info">
                                        <h6>温室智能控制器</h6>
                                        <div class="split"></div>
                                        <div class="on-off"><button><div class="on">已连接</div><div class="off offActive">已断开</div></button></div>
                                        <div class="split"></div>
                                    </div>
                                </li>
                                <div class="split"></div>
                                <li>
                                    <div class="picture"><img src="${pageContext.request.contextPath}/WebContent/img/icon_img2.png"></div>
                                    <div class="setting-info">
                                        <h6>电磁阀</h6>
                                        <div class="split"></div>
                                        <div class="on-off"><button><div class="on">打开</div><div class="off offActive">关闭</div></button></div>
                                        <div class="split"></div>
                                        <div class="setting-tip">已灌溉0小时<img src="${pageContext.request.contextPath}/WebContent/img/icon_sd.gif"></div>
                                    </div>
                                </li>
                                <div class="split"></div>
                            </ul>
                        </div>
                        <div class="chart-box item">
                            <div class="item-title"><img src="${pageContext.request.contextPath}/WebContent/img/main_right_tit3.gif">走势图</div>
                            <div id="chart-content" class="chart-content"></div>
                        </div>
                    </div>
                </div>
            </main>
            <footer role="footer" class="footer">
                <div>版权所有：西安邮电大学</div>
            </footer>
        </div>
        <!-- <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script> -->
        <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/WebContent/js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
        <script src="${pageContext.request.contextPath}/WebContent/js/plugins.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/WebContent/js/echarts.min.js"></script>
        <script src="${pageContext.request.contextPath}/WebContent/js/main.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/WebContent/js/util.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/WebContent/js/view.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/WebContent/js/eMonitor.js"></script>
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
