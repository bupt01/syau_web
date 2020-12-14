<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>老师登录</title>
    <link rel="icon" href="./favicon.ico" type="image/x-icon">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/mypage/css/bootstrap.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/mypage/css/bootstrap-datetimepicker.min.css">
    <style type="text/css">
        .clear {
            clear: both;
        }

        * {
            padding: 0;
            margin: 0;
        }

        /** ------------------------------top---------------------------------*/
        #top {
            overflow: auto;
            width: 100%;
            height: 35px;
            border: 0.5px solid green;
        }

        #top_left {
            float: left;
            margin-left: 150px;
            margin-top: 12px;
            font-size: 14px;
            color: #976;
        }

        #top_right {
            float: right;
            margin-right: 150px;
            margin-top: 12px;
            font-size: 14px;
            color: black;
        }

        #top_righta a {
            text-decoration: none;
            color: blue;
        }

        #top_righta a:hover {
            color: #999;
        }

        /**-----------------------------mycontent---------------------------------------*/
        #mycontent {
            width: 100%;
            height: auto;
            background-image: url("${pageContext.request.contextPath}/mypage/images/teacher.jpg");
            background-size: 100% 100%;
        }

        #content {
            overflow: auto;
            width: 1000px;
            height: auto;
            border: 1px none green;
            margin: 0px auto 5px;
        }

        #content_top {
            overflow: auto;
            height: auto;
        }

        #content_topl {
            float: left;
            width: 50%;
        }

        #content_topl img {
            width: 380px;
            height: 75px;
        }

        #content_topl span {
            font-size: 30px;
            margin-left: 65px;
            font-family: cursive;
            color: #005BAA;
        }

        #content_topr {
            float: right;
            margin-top: 30px;
        }

        #content_topr div {
            width: 100px;
            height: 27px;
            border: 1px none #fff;
            float: left;
            margin-right: 7px;
            margin-top: 5px;
            padding-top: 5px;
            border-radius: 9px;
            font-family: cursive;
            font-size: 18px;
            font-weight: bold;
        }

        .dv1 {
            background-color: blue;
        }

        #div1:hover, #div2:hover, #div3:hover, #div4:hover {
            cursor: pointer;
            background-color: blue;
        }

        /**---------------------------------body1---------------------------------------*/
        #body1_top {
            overflow: auto;
            background-color: #83CBB1;
            width: 100%;
            height: 50px;
        }

        #body1_top div {
            float: left;
            /* 		display: inline; */
            width: 336px;
            height: 50px;
            margin: 0px 0.5px 0px;
            padding-top: 10px;
            font-size: 22px;
            font-family: cursive;
            font-weight: bolder;
            color: #fff;
        }

        #b1top1 {
            /* 		padding-left: 150px; */
            background-color: #E2EBD7;
        }

        #b1top1:hover, #b1top2:hover, #b1top3:hover, #b1top4:hover {
            cursor: pointer;
            background-color: #E2EBD7;
        }

        #furstore {
            overflow: auto;
            height: auto;
            width: 1000px;
            border: 1.5px solid #83CBB1;
            margin: 1px auto 5px;
            background-color: #FCFDEF;
        }

        #furstore hr {

        }

        #furtitle {
            font-size: 20px;
            font-weight: bold;
            padding-left: 20px;
            padding-top: 5px;
        }

        #furinform {
            padding-top: 5px;
            padding-left: 20px;
        }

        .fur {
            float: left;
            width: 25%;
            text-align: center;
            padding: 10px 0px;
        }

        .fur img {
            width: 130px;
            height: 170px;
        }

        #furpage {
            overflow: auto;
        }

        #furpage div {
            float: left;
            height: 20px;
            border: 1px solid blue;
            margin-right: 5px;
            margin-bottom: 5px;
        }

        #furkinds2 {
            display: none;
        }

        .furkintr a {
            text-decoration: none;
            color: black;
        }

        .furkintr a:hover {
            color: blue;
        }

        #myfirst {
            margin-left: 400px;
        }

        #first {
            width: 20px;
            background-color: blue;
        }

        #second {
            width: 20px;
        }

        #myfirst:hover, #first:hover, #second:hover, #mylast:hover {
            cursor: pointer;
            background-color: blue;
        }

        #furgrow, #mylocation, #aboutus {
            display: none;
            height: auto;
        }

        #furgrow {
            border: 0.5px solid #83CBB1;
            margin: 1px auto 5px;
            width: 1000px;
            height: auto;
            background-color: #CAE0D3;
        }

        #growtitle {
            height: 30px;
            width: 100%;
            margin-top: 10px;
            background-color: #CAE0D3;
        }

        #growtitle span {
            font-size: 21px;
            font-family: cursive;
            font-weight: bold;
            color: #fff;
        }

        #growimg {
            width: 1000px;
            /*  		height:350px;  */
            margin: 1px auto 0px;
            overflow: hidden; /* 关键一：ul超出部分隐藏*/

        }

        #growimg img {
            width: 1000px;
            height: 350px;
        }

        #growimg > ul {
            list-style: none;
            /*width:1117px;*/ /*关键二：因为动画设给ul，所以ul不能制定宽度*/
            height: 350px;
            margin: 0px auto;
            animation: lbt 10s infinite;
            animation-timing-function: steps(4); /*一个周期的动画匀速完成*/
            position: relative; /*关键三：ul和li的定位关系*/

        }

        #growimg > ul > li {
            width: 100%;
            height: 100%;
            box-sizing: border-box;

            position: absolute;; /*关键三：ul和li的定位关系*/

        }

        #growimg > ul > li > img {
            width: 100%;
        }

        #growimg > ul > li:nth-child(1) {
            top: 0px;
            left: 0px;
        }

        #growimg > ul > li:nth-child(2) {
            top: 0px;
            left: 1117px;
        }

        #growimg > ul > li:nth-child(3) {
            top: 0px;
            left: 2234px;
        }

        #growimg > ul > li:nth-child(4) {
            top: 0px;
            left: 3351px;
        }

        @keyframes lbt {
            from {
                transform: translate(0px); /*起始不滚动*/
            }
            to {
                transform: translate(-4468px); /*循环滚动的必要长度*/
            }
        }

        #growinform {
            margin-left: 0px;
            font-size: 20px;
            padding-left: 5px;
        }

        .li1 {
            background-color: #F0FD8F;
            list-style: none;
        }

        .li2 {
            background-color: #FFFDEF;
            list-style: none;
        }

        #growinform li:hover {
            cursor: pointer;
        }

        #mylocation {
            width: 1000px;
            height: auto;
            margin: 0px auto 5px;
            border: 1px solid #83CBB1;
        }

        #myloctop {
            background-color: #FFFDEF;
            height: 30px;
            font-size: 22px;
            font-family: cursive;
            color: #83CBB1;
            margin-top: 8px;
        }

        #mylocimg {
            width: 1000px;
            /*  		height:350px;  */
            margin: 1px auto 0px;
            overflow: hidden; /* 关键一：ul超出部分隐藏*/

        }

        #mylocimg img {
            width: 1000px;
            height: 350px;
        }

        #mylocimg > ul {
            list-style: none;
            /*width:1117px;*/ /*关键二：因为动画设给ul，所以ul不能制定宽度*/
            height: 350px;
            margin: 0px auto;
            animation: lbt 8s infinite;
            animation-timing-function: steps(4); /*一个周期的动画匀速完成*/
            position: relative; /*关键三：ul和li的定位关系*/

        }

        #mylocimg > ul > li {
            width: 100%;
            height: 100%;
            box-sizing: border-box;

            position: absolute;; /*关键三：ul和li的定位关系*/

        }

        #mylocimg > ul > li > img {
            width: 100%;
        }

        #mylocimg > ul > li:nth-child(1) {
            top: 0px;
            left: 0px;
        }

        #mylocimg > ul > li:nth-child(2) {
            top: 0px;
            left: 1117px;
        }

        #mylocimg > ul > li:nth-child(3) {
            top: 0px;
            left: 2234px;
        }

        #mylocimg > ul > li:nth-child(4) {
            top: 0px;
            left: 3351px;
        }

        @keyframes lbt {
            from {
                transform: translate(0px); /*起始不滚动*/
            }
            to {
                transform: translate(-4468px); /*循环滚动的必要长度*/
            }
        }

        #mylocinform {
            width: 100%;
            height: 110px;
            background-color: #83CBB1;
        }

        #mylocmesseg {
            width: 900px;
            height: 100px;
            margin: 0px auto 0px;
            background-color: #83C091;
        }

        #mylocmesseg span {
            display: block;
        }

        #myloctitle {
            font-size: 25px;
            font-weight: bold;
        }

        #myloccontent {
            font-size: 20px;
            font-family: cursive;
        }

        #aboutus {
            width: 1000px;
            height: 400px;
            border: 1px solid #83CBB1;
            margin: 1px auto 2px;
            background-color: #E2EBD7;
        }

        #aboutuslogo img {
            width: 500px;
            height: 100px;
            margin-top: 10px;
            margin-left: 280px;
        }

        #aboutusname {
            margin-top: 80px;
            margin-left: 450px;
            font-size: 25px;
            font-family: fantasy;
            font-style: oblique;
            font-weight: bolder;
            color: #005BAA;
        }

        #aboutusqq span {
            display: block;
        }

        #aboutusqq {
            margin-top: 120px;
            float: right;
            margin-right: 20px;
        }

        #body2, #body3, #body4 {
            display: none;
        }

        #body2top {
            width: 100%;
            height: 40px;
            background-color: #83CBB1;
            color: #fff;
            font-size: 25px;
            font-family: cursive;
            font-weight: bold;
            margin-top: 0px;
        }

        #body2top span {
            margin-top: 10px;
            margin-left: 550px;
        }

        #body2lr {
            width: 1000px;
            height: 452px;
            margin: 1px auto 0px;
            border: 1.5px solid #8ACBB5;
            border-radius: 10px;
            background-color: #FCFDEF;
        }

        #body2l {
            float: left;
            font-size: 22px;
            font-family: cursive;
            width: 200px;
            height: 430px;
            background-color: #4cae4c;
            border: 0.5px solid #8ACBB5;
            border-radius: 10px;
            margin-left: 10px;
            margin-top: 10px;
        }

        #body2messeg, #body2pass, #body2name {
            width: 100%;
            height: 40px;
            border: 1px none #8ACBBA;
            border-radius: 8px;
            margin-top: 20px;
            background-color: #E2EBD7;
        }

        #body2messeg {
            background-color: #83CBB1;
        }

        .body2lm {
            padding-top: 8px;
        }

        #body2messeg:hover, #body2pass:hover, #body2name:hover {
            cursor: pointer;
            background-color: #83CBB1;
        }

        #body2r {
            float: right;
            width: 700px;
            height: 430px;
            border: 1px solid #83CBB1;
            margin-right: 50px;
            margin-top: 10px;
            border-radius: 10px;
        }

        #body2mypass, #body2myinform {
            display: none;
        }

        .mymesseg {
            width: 600px;
            height: 60px;
            border: 0.5px solid #83CBB1;
            margin-left: 50px;
            margin-top: 10px;
            border-radius: 9px;
            font-size: 15px;
            background-color: #E2EBD7;
            padding-top: 15px;
            padding-left: 30px;
        }

        .mymesseg img {
            width: 21px;
            height: 21px;

        }

        .mymesseg span {

        }

        #body2mypass {
            margin-top: 70px;
        }

        .pass {
            width: 200px;
            height: 25px;
            margin-top: 15px;
            margin-left: 15px;
            margin-bottom: 15px;
            border-radius: 9px;
        }

        .msubmit {
            width: 100px;
            height: 25px;
            margin-top: 20px;
            margin-left: 30px;
            border-radius: 5px;
        }

        .msubmit:hover {
            cursor: pointer;
        }

        #body2myinform {
            margin-top: 40px;
        }

        .binform {
            width: 200px;
            height: 25px;
            margin-top: 15px;
            margin-left: 15px;
            margin-bottom: 15px;
            border-radius: 9px;
        }

        #mysex span {
            margin-right: 20px;
        }

        #mysex input[type="radio"] {
            margin-left: 45px;
        }

        #mfsex {
            margin-right: 100px;
        }

        #body3top {
            width: 100%;
            height: 40px;
            overflow: auto;
            background-color: #83CBB1;
        }

        #body3topleft {
            float: left;
            margin-left: 630px;
            margin-top: 8px;
        }

        #body3topleft img {
            width: 25px;
            height: 25px;
        }

        #body3topright {
            float: right;
            margin-right: 600px;
            font-size: 22px;
            font-family: cursive;
            font-weight: bold;
            color: #fff;
            margin-top: 8px;
        }

        #body3suggest {
            margin: 1px auto 2px;
            border: 0.5px solid #83CBB1;
            border-radius: 9px;
            width: 1000px;
            height: 400px;
            background-color: #CBE1D4;
        }

        #mysuggest textarea {
            margin-top: 20px;
            border-radius: 9px;
            border-color: blue;
            font-size: 20px;
            width: 700px;
            height: 300px;
        }

        #body3submit input[type="submit"] {
            margin-top: 10px;
            height: 30px;
            width: 100px;
            border-radius: 7px;
            font-size: 20px;
            font-family: cursive;
            background-color: #fff;
        }

        #body3submit input[type="submit"]:hover {
            cursor: pointer;
        }

        #bottom {
            width: 100%;
            height: 40px;
            background-color: #CDCDCD;
            margin-top: 5px;
            font-size: 15px;
        }

        #bottomspan div {
            padding-top: 12px;
        }

        #body4_top {
            overflow: auto;
            background-color: #83CBB1;
            width: 100%;
            height: 50px;
        }

        #body4_top div {
            float: left;
            /* 		display: inline; */
            width: 336px;
            height: 50px;
            margin: 0px 0.5px 0px;
            padding-top: 10px;
            font-size: 22px;
            font-family: cursive;
            font-weight: bolder;
            color: #fff;
        }

        #b4top1 {
            /* 		padding-left: 150px; */
            background-color: #E2EBD7;
        }

        #b4top1:hover, #b4top2:hover, #b4top3:hover, #b4top4:hover {
            cursor: pointer;
            background-color: #E2EBD7;
        }

        #mydata {
            overflow: auto;
            width: 100%;
            height: auto;
            background-color: #ECF5EF;
        }

        #mydatabox {
            width: 1000px;
            margin: 2px auto 2px;
            border: 0.5px solid blue;
            height: 400px;
            border-radius: 9px;
            background-color: #fff;
        }

        #mydatabody {
            width: 900px;
            margin: 20px auto 10px;
            border: 5px solid #D3E3F0;
            height: 340px;
        }

        #datatitle {
            float: left;
            background-color: #EBF7FF;
            width: 100%;
            height: 35px;
            font-weight: bold;
            font-family: cursive;
            font-size: 20px;
            padding-top: 6px;
        }

        #datatitle img {
            margin-left: 40px;

        }

        #datatitle span {

        }

        #mydataname span {
            font-weight: bold;
            font-size: 17px;
        }

        #mydatahouse {
            margin: 5px auto 0px;
            border: 1px solid #DDDDDD;
            width: 850px;
            height: 200px;
            border-radius: 9px;
        }

        #mydatahouse:hover {
            border-color: blue;
        }

        #mydatahouse1 {
            margin-top: 35px;
            margin-left: 30px;
        }

        #mydatahouse2, #mydatahouse3 {

            margin-left: 30px;
            margin-top: 30px;
        }

        #mydatahouse1 .mydatatitle, #mydatahouse2 .mydatatitle, #mydatahouse3 .mydatatitle {
            background-color: #43848E;
            margin-right: 40px;
            padding: 7px;
        }

        #mydatahouse1 .mydatatitle:hover, #mydatahouse2 .mydatatitle:hover, #mydatahouse3 .mydatatitle:hover {
            cursor: pointer;
        }

        #mydatahouse1 .mydatatime, #mydatahouse2 .mydatatime, #mydatahouse3 .mydatatime {
            background-color: #CBE3E7;

        }

        #mydatahouse1 li, #mydatahouse2 li, #mydatahouse3 li {
            display: inline;
            font-size: 13px;
            border: 0px solid;
            background-color: #EEEEEE;
            border-radius: 7px;
            padding: 7px;
            margin: 10px;
        }

        #analysisdata, #historydata, #surrounddata {
            display: none;
        }

        #analysisdata {
            overflow: auto;
            width: 100%;
            height: auto;
            background-color: #ECF5EF;
        }

        #analysisbox {
            width: 1100px;
            margin: 2px auto 2px;
            border: 0.5px solid blue;
            height: auto;
            border-radius: 9px;
            background-color: #fff;
        }

        #analysisbody {
            width: 1000px;
            margin: 20px auto 10px;
            border: 5px solid #D3E3F0;
            height: auto;
        }

        #analysistitle {
            float: left;
            background-color: #EBF7FF;
            width: 100%;
            height: 35px;
            font-weight: bold;
            font-family: cursive;
            font-size: 20px;
            padding-top: 5px;
        }

        #analysistitle img {
            margin-left: 40px;
        }

        #analysistitle span {
            margin-top: 10px;
        }

        #myanalysisbody {
            width: 950px;
            border: 1px solid #CECECE;
            margin: 50px auto 0px;
            background-color: #F9F9F9;
            border-radius: 9px;
            padding: 10px;
            font-size: 14px;
            font-weight: lighter;
            height: auto;
        }

        .room-select {
            font-size: 14px;
            font-weight: lighter;
            margin-right: 20px;
            width: 200px;
            height: 30px;
            border-radius: 9px;
            cursor: pointer;
        }

        .input_date {
            height: 26px;
            border-radius: 9px;
            cursor: pointer;
        }

        .operation label {
            padding-left: 30px;
        }

        #myanalysisbody input[type='submit'] {
            float: right;
            width: 60px;
            border-radius: 5px;
            height: 25px;
            margin-right: 100px;
        }

        #myanalysisbody input[type='submit']:hover {
            cursor: pointer;
        }

        .chexck {
            margin-top: 20px;
            margin-left: 50px;
            padding-left: 10px;
        }

        #analysistabletitle {
            width: 950px;
            height: auto;
            margin: 20px auto 0px;
            border: 0.5px solid #C5C5C5;
        }

        #analysistabletitle th {
            border: 0.5px solid #C5C5C5;
            background-color: #EAEAEA;
            width: 237px;
            height: 25px;
            font-weight: lighter;
            padding-left: 80px;
        }

        #analysistable {
            width: 950px;
            height: 350px;
            overflow: scroll;
            margin: 0px auto 5px;
            border: 0.5px solid #C5C5C5;
        }

        #analysistable td {
            border: 0.5px solid #C5C5C5;
            background-color: ;
            width: 237px;
            height: 25px;
            font-weight: lighter;
            padding-left: 80px;
        }

        #historydata {
            overflow: auto;
            width: 100%;
            height: auto;
            background-color: #ECF5EF;
        }

        #historybox {
            width: 1100px;
            margin: 2px auto 2px;
            border: 0.5px solid blue;
            height: auto;
            border-radius: 9px;
            background-color: #fff;
        }

        #historybody {
            width: 1000px;
            margin: 20px auto 10px;
            border: 5px solid #D3E3F0;
            height: auto;
        }

        #historytitle {
            float: left;
            background-color: #EBF7FF;
            width: 100%;
            height: 35px;
            font-weight: bold;
            font-family: cursive;
            font-size: 20px;
            padding-top: 5px;
        }

        #historytitle img {
            margin-left: 40px;
        }

        #historytitle span {
            margin-top: 10px;
        }

        #myhistorytop {
            width: 950px;
            border: 1px solid #CECECE;
            margin: 50px auto 0px;
            background-color: #F9F9F9;
            border-radius: 9px;
            padding: 10px;
            font-size: 14px;
            font-weight: lighter;
            height: auto;
        }

        .download-btn {
            width: 70px;
            padding-left: 30px;
            height: 24px;
            line-height: 24px;
            color: #426da0;
            display: inline-block;
            cursor: pointer;
            margin-left: 20px;
            background: url("${pageContext.request.contextPath}/mypage/images/download.gif");
            margin-left: 10px;
        }
        #surrounddata {
            overflow: auto;
            width: 100%;
            height: 450px;
            background-color: #ECF5EF;
        }

        #surroundbox {
            width: 1100px;
            margin: 2px auto 2px;
            border: 0.5px solid blue;
            height: 430px;
            border-radius: 9px;
            background-color: #fff;
        }

        #surroundbody {
            width: 1000px;
            margin: 20px auto 10px;
            border: 5px solid #D3E3F0;
            height: 380px;
        }

        #surroundtitle {
            float: left;
            background-color: #EBF7FF;
            width: 100%;
            height: 35px;
            font-weight: bold;
            font-family: cursive;
            font-size: 20px;
            padding-top: 5px;
        }

        #surroundtitle img {
            margin-left: 40px;
        }

        #surroundtitle span {
            margin-top: 10px;
        }

    </style>
</head>
<body>
<div id="page">
    <!-- ------------------------top------------------- -->
    <div id="top">
        <div id="top_left">
            <span>您好，欢迎来到沈阳农业大学种植基地!</span>
        </div>
        <div id="top_right">
            <div id="top_righta">
                <span id="">欢迎您<span style="color: #4cae4c">${user.username}</span></span>
                <span></span>
                <a href="teacher.jsp">[个人中心]</a>
                <a href="/logout">[安全退出]</a>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <!-- ----------------------content----------------- -->
    <div id="mycontent">
        <div id="content">
            <div id="content_top">
                <div id="content_topl">
                    <img alt="沈阳农业大学" src="${pageContext.request.contextPath}/mypage/images/syaulg.png"><br>
                    <span>天柱山水果交流平台</span>
                </div>
                <div id="content_topr">
                    <div align="center" class="dv1" id="div1" onclick="Event">首页</div>
                    <div align="center" id="div2">我的信息</div>
                    <div align="center" id="div3">发布动态</div>
                        <div align="center" id="div4">环境监测</div>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <!-- ----------------------body1------------------- -->
    <div id="body1">
        <div id="body1_top">
            <div id="b1top1" align="center">水果商城</div>
            <div id="b1top2" align="center">生长环境</div>
            <div id="b1top3" align="center">地理位置</div>
            <div id="b1top4" align="center">关于我们</div>
        </div>
        <div class="clear"></div>
        <!-- --------------body1-1---------- -->
        <div id="furstore">
            <div id="furtitle">水果目录</div>
            <hr>
            <div id="furinform">水果种类及售价</div>
            <hr>
            <div id="furkinds1">
                <c:forEach items="${productList}" var="p">
                    <div class="fur">
                        <div class="furkimg">
                                <%--<img alt="水果" src="${pageContext.request.contextPath}/mypage/images/mystra3.jpg">--%>
                            <img alt="水果" src="${p.productImg}">
                        </div>
                        <div class="furkintr">
                            <span><a href="#">${p.productName}</a></span><br/>
                            <span>售价:${p.productPrice}元/斤</span><br/>
                            <span>库存:${p.productNum}</span>
                        </div>
                    </div>
                </c:forEach>
                <%--<div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="${pageContext.request.contextPath}/mypage/images/stra1.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="${pageContext.request.contextPath}/mypage/images/stra1.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="${pageContext.request.contextPath}/mypage/images/stra1.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="${pageContext.request.contextPath}/mypage/images/stra1.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="${pageContext.request.contextPath}/mypage/images/stra1.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="${pageContext.request.contextPath}/mypage/images/stra1.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="images/stra1.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
            </div>
            <div id="furkinds2">
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="images/stra2.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="images/stra2.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="images/stra2.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="images/stra2.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="images/stra2.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="images/stra2.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="images/stra2.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>
                <div class="fur">
                    <div class="furkimg">
                        <img alt="水果" src="images/stra2.jpg">
                    </div>
                    <div class="furkintr">
                        <span><a href="#">草莓</a></span><br/>
                        <span>售价:xxx</span>
                    </div>
                </div>--%>
            </div>
            <div class="clear"></div>
            <div id="furpage">
                <div id="myfirst">上一页</div>
                <div id="first" align="center">1</div>
                <div id="second" align="center">2</div>
                <div id="mylast">下一页</div>
            </div>
        </div>
        <div class="clear"></div>
        <div id="furgrow">
            <div id="growtitle" align="center">
                <span>沈阳农业大学天柱山</span>
            </div>
            <div id="growimg">
                <ul>
                    <li><img src="${pageContext.request.contextPath}/mypage/images/va1.jpg"></li>
                    <li><img src="${pageContext.request.contextPath}/mypage/images/va2.jpg"></li>
                    <li><img src="${pageContext.request.contextPath}/mypage/images/toma2.jpg"></li>
                    <li><img src="${pageContext.request.contextPath}/mypage/images/stra1.jpg"></li>
                </ul>
            </div>
            <div id="growinform">
                <ul>
                    <li class="li1">xxxxxxxxxxxx</li>
                    <li class="li2">xxxxxxxxxxxx</li>
                    <li class="li1">xxxxxxxxxxxx</li>
                    <li class="li2">xxxxxxxxxxxx</li>
                    <li class="li1">xxxxxxxxxxxx</li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
        <div id="mylocation">
            <div id="myloctop" align="center">
                <span>沈阳农业大学天柱山</span>
            </div>
            <div id="mylocimg">
                <ul>
                    <li><img src="${pageContext.request.contextPath}/mypage/images/va1.jpg"></li>
                    <li><img src="${pageContext.request.contextPath}/mypage/images/va2.jpg"></li>
                    <li><img src="${pageContext.request.contextPath}/mypage/images/toma2.jpg"></li>
                    <li><img src="${pageContext.request.contextPath}/mypage/images/stra1.jpg"></li>
                </ul>
            </div>
            <div class="clear"></div>
            <div id="mylocinform">
                <div id="mylocmesseg">
                    <span id="myloctitle">位置简介</span>
                    <span id="myloccontent">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</span>
                </div>
            </div>
        </div>
        <div id="aboutus">
            <div id="aboutuslogo">
                <img alt="logo" src="images/syaulg.png">
            </div>
            <div id="aboutusname">
                <img alt="logo" src="images/">
                <span>创新小队</span>
            </div>
            <div id="aboutusqq">
                <span>联系方式：</span>
                <span>QQ:123xxx678</span>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <!-- ----------------------body2------------------- -->
    <div id="body2">
        <div id="body2top">
            <span>天柱山水果交流平台</span>
        </div>
        <div id="body2lr">
            <div id="body2l">
                <div id="body2messeg" align="center">
                    <div class="body2lm">查看消息</div>
                </div>
                <div id="body2pass" align="center">
                    <div class="body2lm">修改密码</div>
                </div>
                <div id="body2name" align="center">
                    <div class="body2lm">完善信息</div>
                </div>
            </div>
            <div id="body2r">
                <div id="body2mymesseg">
                    <div id="messeg1">
                        <div class="mymesseg">
                            <img alt="管理员" src="${pageContext.request.contextPath}/mypage/images/admit.png">:
                            <span>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</span>
                        </div>
                    </div>
                    <div id="messeg2">
                        <div class="mymesseg">
                            <img alt="管理员" src="${pageContext.request.contextPath}/mypage/images/admit.png">:
                            <span>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</span>
                        </div>
                    </div>
                    <div id="messeg3">
                        <div class="mymesseg">
                            <img alt="管理员" src="${pageContext.request.contextPath}/mypage/images/admit.png">:
                            <span>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</span>
                        </div>
                    </div>
                    <div id="messeg4">
                        <div class="mymesseg">
                            <img alt="管理员" src="${pageContext.request.contextPath}/mypage/images/admit.png">:
                            <span>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</span>
                        </div>
                    </div>
                    <div id="messeg5">
                        <div class="mymesseg">
                            <img alt="管理员" src="${pageContext.request.contextPath}/mypage/images/admit.png">:
                            <span>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</span>
                        </div>
                    </div>
                    <div id="messeg6">
                        <div class="mymesseg">
                            <img alt="管理员" src="${pageContext.request.contextPath}/mypage/images/admit.png">:
                            <span>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</span>
                        </div>
                    </div>
                </div>
                <div id="body2mypass" align="center">
                    <form action="tePassExit.jsp" method="post">
                        <div id="oldpass">
                            <span>*请输入原始密码*</span>
                            <input type="password" name="oldpassword" class="pass varpass">
                            <span id="tiShi"></span>
                        </div>
                        <div id="newpass">
                            <span>*请输入新的密码*</span>
                            <input type="password" name="newpassword" class="pass newVarPassword">
                            <span></span>
                        </div>
                        <div id="surepass">
                            <span>*请输入确定密码*</span>
                            <input type="password" name="surepassword" class="pass newVarPassword_certain">
                            <span></span>
                        </div>
                        <div id="mysubmit">
                            <input type="reset" value="重置" class="msubmit">
                            <input type="submit" value="确定" class="msubmit">
                        </div>
                    </form>
                </div>
                <div id="body2myinform" align="center">
                    <form action="tePersonExit.jsp" method="post">
                        <div id="myname">
                            <span>*修改昵称*</span>
                            <input type="text" name="mynewname" class="binform">
                        </div>
                        <div id="mysex">
                            <span id="mfsex">*性别*</span>
                            <input type="radio" name="sex" value="male" checked="checked"><span>男</span>
                            <input type="radio" name="sex" value="female"><span>女</span>
                        </div>
                        <div id="phonenum">
                            <span>*联系电话*</span>
                            <input type="text" name="phone" class="binform mphonenum">
                            <span></span>
                        </div>
                        <div id="myemail">
                            <span>*e - mail *</span>
                            <input type="text" name="email" class="binform memail">
                            <span></span>
                        </div>
                        <div id="informsubmit">
                            <input type="reset" value="重置" class="msubmit">
                            <input type="submit" value="提交" class="msubmit">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <!-- ----------------------body3------------------- -->
    <div id="body3">
        <div id="body3top">
            <div id="body3topleft">
                <img alt="信箱" src="${pageContext.request.contextPath}/mypage/images/suggest.png">
            </div>
            <div id="body3topright">
                <span>意见反馈</span>
            </div>
        </div>
        <div class="clear"></div>
        <div id="body3suggest">
            <div id="body3mysuggest">
                <form action="teSuggestExit.jsp" method="post">
                    <div id="mysuggest" align="center">
                        <textarea rows="20" cols="80" placeholder="不要超过400个字" name="suggest"></textarea>
                    </div>
                    <div id="body3submit" align="center">
                        <input type="submit" value="提交">
                    </div>
                </form>
            </div>
        </div>

    </div>
    <!-- ---------------------body4------------------- -->
    <div class="clear"></div>
    <div id="body4">
        <div id="body4_top" align="center">
            <div id="b4top1">数据实况</div>
            <div id="b4top2">数据分析</div>
            <div id="b4top3">历史数据</div>
            <div id="b4top4">环境监控</div>
        </div>
        <div class="clear"></div>
        <div id="mydata">
            <div id="mydatabox">
                <div id="mydatabody">
                    <div id="datatitle">
                        <img src="${pageContext.request.contextPath}/mypage/images/title.png">
                        <span>实时数据</span>
                    </div>
                    <div id="mydataname" align="center">
                        <span>日光温室</span>
                    </div>
                    <div id="mydatahouse">
                        <div id="mydatahouse1">
                            <ul>
                                <li class="mydatatitle">日光温室1</li>
                                <li class="mydatatime">${maxData.createTime}</li>
                                <li>空气温度:${maxData.temperature} ℃</li>
                                <li>空气湿度:${maxData.humidity} %</li>
                                <li>光照强度:${maxData.lightIntensity}</li>
                            </ul>
                        </div>
                        <div id="mydatahouse2">
                            <ul>
                                <li class="mydatatitle">日光温室2</li>
                                <li class="mydatatime">2018/11/16 12:18</li>
                                <li>空气温度:28.6 ℃</li>
                                <li>空气湿度:50.3 %</li>
                                <li>光照强度:28.4</li>
                            </ul>
                        </div>
                        <div id="mydatahouse3">
                            <ul>
                                <li class="mydatatitle">日光温室3</li>
                                <li class="mydatatime">2018/11/16 12:18</li>
                                <li>空气温度:28.6 ℃</li>
                                <li>空气湿度:50.3 %</li>
                                <li>光照强度:28.4</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
        <div id="analysisdata">
            <div id="analysisbox">
                <div id="analysisbody">
                    <div id="analysistitle">
                        <img src="${pageContext.request.contextPath}/mypage/images/title.png">
                        <span>数据分析</span>
                    </div>
                    <div id="myanalysisbody">
                        <form action="#" method="post">
                            <div class="operation">
                                <label>选择设备：</label>
                                <select class="room-select">
                                    <option selected="selected">日光温室1</option>
                                    <option>日光温室2</option>
                                    <option>日光温室3</option>
                                </select>
                                <label>时间：</label>
                                <input type="text" value="" class="input_date" data-date-format="yyyy-mm-dd" readonly> 至
                                <input type="text" value="" class="input_date" data-date-format="yyyy-mm-dd" readonly>
                                <input type="submit" value="查 询">
                            </div>
                            <div class="chexck">
                                <input type="checkbox" checked="checked" value="空气温度">
                                <label>空气温度</label>
                                <input type="checkbox" checked="checked" value="空气湿度">
                                <label>空气湿度</label>
                                <input type="checkbox" checked="checked" value="光照强度">
                                <label>光照强度</label>
                            </div>
                        </form>
                    </div>
                    <div id="analysistabletitle">
                        <table>
                            <tr>
                                <th>接收时间</th>
                                <th>空气温度</th>
                                <th>空气湿度</th>
                                <th>光照强度</th>
                            </tr>
                        </table>
                    </div>
                    <div id="analysistable">
                        <table>
                            <c:forEach var="p" items="${portData}">
                                <tr>
                                    <td>${p.createTime}</td>
                                    <td>${p.temperature}</td>
                                    <td>${p.humidity}</td>
                                    <td>${p.lightIntensity}</td>
                                </tr>
                            </c:forEach>
                            <%--<tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
                            <tr><td>2016-05-09 00:00</td><td>18.65</td><td>65</td><td>0.7</td></tr>
--%>                            </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="historydata">
            <div id="historybox">
                <div id="historybody">
                    <div id="historytitle">
                        <img alt="" src="${pageContext.request.contextPath}/mypage/images/title.png">
                        <span>历史数据</span>
                    </div>
                    <div id="myhistorytop">
                        <form action="#" method="post">
                            <div class="operation">
                                <label>选择设备：</label>
                                <select class="room-select">
                                    <option selected="selected">日光温室1</option>
                                    <option>日光温室2</option>
                                    <option>日光温室3</option>
                                </select>
                                <span class="download-btn"><a href="/portExcel.action">下 载</a></span>
                            </div>
                        </form>
                    </div>
                    <div id="analysistabletitle">
                        <table>
                            <tr>
                                <th>接收时间</th>
                                <th>空气温度</th>
                                <th>空气湿度</th>
                                <th>光照强度</th>
                            </tr>
                        </table>
                    </div>
                    <div id="analysistable">
                        <table>
                            <c:forEach var="p" items="${portData}">
                                <tr>
                                    <td>${p.createTime}</td>
                                    <td>${p.temperature}</td>
                                    <td>${p.humidity}</td>
                                    <td>${p.lightIntensity}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="surrounddata">
            <div id="surroundbox">
                <div id="surroundbody">
                    <div id="surroundtitle">
                        <img alt="" src="${pageContext.request.contextPath}/mypage/images/title.png">
                        <span>环境监控</span>
                    </div>
                    <div id="mysurround">

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ---------------------bottom------------------- -->
    <div class="clear"></div>
    <div id="bottom">
        <div id="bottomspan" align="center">
            <div>版权所有：沈阳农业大学</div>
        </div>
    </div>
</div>
</body>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/mypage/js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
<script src="${pageContext.request.contextPath}/mypage/js/vendor/modernizr-2.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/mypage/js/plugins.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/mypage/js/echarts.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/mypage/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/mypage/js/util.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/mypage/js/view.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/mypage/js/analysisData.js"></script>
<script type="text/javascript">

    //---------------------总display---------------------------------
    var div1 = document.getElementById("div1");
    var div2 = document.getElementById("div2");
    var div3 = document.getElementById("div3");
    var div4 = document.getElementById("div4");
    var body1 = document.getElementById("body1");
    var body2 = document.getElementById("body2");
    var body3 = document.getElementById("body3");
    var body4 = document.getElementById("body4");

    //  	div1.onmouseover=function(){
    // 		div1.style.backgroundColor="blue";
    // 	}
    // 	div2.onmouseover=function(){
    // 		div2.style.backgroundColor="blue";
    // 	}
    // 	div3.onmouseover=function(){
    // 		div3.style.backgroundColor="blue";
    // 	}
    div2.onclick = function () {
        div2.style.backgroundColor = "blue";
        div1.style.backgroundColor = "rgba(255,255,255,0)";
        div3.style.backgroundColor = "rgba(255,255,255,0)";
        div4.style.backgroundColor = "rgba(255,255,255,0)";
        /* div1.style.display="none"; */
        body2.style.display = "block";
        body1.style.display = "none";
        body3.style.display = "none";
        body4.style.display = "none";
    }
    div3.onclick = function () {
        div1.style.backgroundColor = "rgba(255,255,255,0)";
        div3.style.backgroundColor = "blue";
        div2.style.backgroundColor = "rgba(255,255,255,0)";
        div4.style.backgroundColor = "rgba(255,255,255,0)";
        body3.style.display = "block";
        body1.style.display = "none";
        body2.style.display = "none";
        body4.style.display = "none";
    }
    div4.onclick = function () {
        div1.style.backgroundColor = "rgba(255,255,255,0)";
        div4.style.backgroundColor = "blue";
        div2.style.backgroundColor = "rgba(255,255,255,0)";
        div3.style.backgroundColor = "rgba(255,255,255,0)";
        body4.style.display = "block";
        body1.style.display = "none";
        body2.style.display = "none";
        body3.style.display = "none";
    }
    div1.onclick = function () {
        div2.style.backgroundColor = "rgba(255,255,255,0)";
        div1.style.backgroundColor = "blue";
        div3.style.backgroundColor = "rgba(255,255,255,0)";
        div4.style.backgroundColor = "rgba(255,255,255,0)";
        body1.style.display = "block";
        body2.style.display = "none";
        body3.style.display = "none";
        body4.style.display = "none";
    }
    //------------------------------分页display-----------------------------
    var first = document.getElementById("first");
    var second = document.getElementById("second");
    var furkinds1 = document.getElementById("furkinds1");
    var furkinds2 = document.getElementById("furkinds2");
    var myfirst = document.getElementById("myfirst");
    var mylast = document.getElementById("mylast");
    // 	first.onmouseover=function(){
    // 		first.style.backgroundColor="blue";
    // 	}
    // 	second.onmouseover=function(){
    // 		second.style.backgroundColor="blue";
    // 	}
    // 	myfirst.onmouseover=function(){
    // 		myfirst.style.backgroundColor="blue";
    // 	}
    // 	mylast.onmouseover=function(){
    // 		mylast.style.backgroundColor="blue";
    // 	}
    first.onclick = function () {
        first.style.backgroundColor = "blue";
        second.style.backgroundColor = "rgba(255,255,255,0)";
        myfirst.style.backgroundColor = "rgba(255,255,255,0)";
        mylast.style.backgroundColor = "rgba(255,255,255,0)";
        furkinds1.style.display = "block";
        furkinds2.style.display = "none";
    }
    second.onclick = function () {
        second.style.backgroundColor = "blue";
        first.style.backgroundColor = "rgba(255,255,255,0)";
        myfirst.style.backgroundColor = "rgba(255,255,255,0)";
        mylast.style.backgroundColor = "rgba(255,255,255,0)";
        furkinds2.style.display = "block";
        furkinds1.style.display = "none";
    }
    myfirst.onclick = function () {
        second.style.backgroundColor = "rgba(255,255,255,0)";
        mylast.style.backgroundColor = "rgba(255,255,255,0)";
        first.style.backgroundColor = "blue";
        myfirst.style.backgroundColor = "blue";
        furkinds1.style.display = "block";
        furkinds2.style.display = "none";
    }
    mylast.onclick = function () {
        first.style.backgroundColor = "rgba(255,255,255,0)";
        myfirst.style.backgroundColor = "rgba(255,255,255,0)";
        second.style.backgroundColor = "blue";
        mylast.style.backgroundColor = "blue";
        furkinds2.style.display = "block";
        furkinds1.style.display = "none";
    }
    //-----------------------------body1 display------------------------
    var b1top1 = document.getElementById("b1top1");
    var b1top2 = document.getElementById("b1top2");
    var b1top3 = document.getElementById("b1top3");
    var b1top4 = document.getElementById("b1top4");
    var furstore = document.getElementById("furstore");
    var furgrow = document.getElementById("furgrow");
    var mylocation = document.getElementById("mylocation");
    var aboutus = document.getElementById("aboutus");
    // 	b1top1.onmouseover=function(){
    // 		b1top1.style.backgroundColor="#E2EBD7";
    // 	}
    // 	b1top2.onmouseover=function(){
    // 		b1top2.style.backgroundColor="#E2EBD7";
    // 	}
    // 	b1top3.onmouseover=function(){
    // 		b1top3.style.backgroundColor="#E2EBD7";
    // 	}
    // 	b1top4.onmouseover=function(){
    // 		b1top4.style.backgroundColor="#E2EBD7";
    // 	}
    b1top1.onclick = function () {
        b1top1.style.backgroundColor = "#E2EBD7";
        b1top2.style.backgroundColor = "rgba(255,255,255,0)";
        b1top3.style.backgroundColor = "rgba(255,255,255,0)";
        b1top4.style.backgroundColor = "rgba(255,255,255,0)";
        furstore.style.display = "block";
        furgrow.style.display = "none";
        mylocation.style.display = "none";
        aboutus.style.display = "none";
    }
    b1top2.onclick = function () {
        b1top2.style.backgroundColor = "#E2EBD7";
        b1top1.style.backgroundColor = "rgba(255,255,255,0)";
        b1top3.style.backgroundColor = "rgba(255,255,255,0)";
        b1top4.style.backgroundColor = "rgba(255,255,255,0)";
        furstore.style.display = "none";
        furgrow.style.display = "block";
        mylocation.style.display = "none";
        aboutus.style.display = "none";
    }
    b1top3.onclick = function () {
        b1top3.style.backgroundColor = "#E2EBD7";
        b1top2.style.backgroundColor = "rgba(255,255,255,0)";
        b1top1.style.backgroundColor = "rgba(255,255,255,0)";
        b1top4.style.backgroundColor = "rgba(255,255,255,0)";
        furstore.style.display = "none";
        furgrow.style.display = "none";
        mylocation.style.display = "block";
        aboutus.style.display = "none";
    }
    b1top4.onclick = function () {
        b1top1.style.backgroundColor = "rgba(255,255,255,0)";
        b1top2.style.backgroundColor = "rgba(255,255,255,0)";
        b1top3.style.backgroundColor = "rgba(255,255,255,0)";
        b1top4.style.backgroundColor = "#E2EBD7";
        furstore.style.display = "none";
        furgrow.style.display = "none";
        mylocation.style.display = "none";
        aboutus.style.display = "block";
    }
    //-------------------------------body2-display-------------------------------------
    var body2messeg = document.getElementById("body2messeg");
    var body2pass = document.getElementById("body2pass");
    var body2name = document.getElementById("body2name");
    var body2mymesseg = document.getElementById("body2mymesseg");
    var body2mypass = document.getElementById("body2mypass");
    var body2myinform = document.getElementById("body2myinform");
    body2messeg.onclick = function () {
        body2messeg.style.backgroundColor = "#83CBB1";
        body2pass.style.backgroundColor = "#E2EBD7";
        body2name.style.backgroundColor = "#E2EBD7";
        body2mymesseg.style.display = "block";
        body2mypass.style.display = "none";
        body2myinform.style.display = "none";
    }
    body2pass.onclick = function () {
        body2pass.style.backgroundColor = "#83CBB1";
        body2messeg.style.backgroundColor = "#E2EBD7";
        body2name.style.backgroundColor = "#E2EBD7";
        body2mypass.style.display = "block";
        body2mymesseg.style.display = "none";
        body2myinform.style.display = "none";
    }
    body2name.onclick = function () {
        body2name.style.backgroundColor = "#83CBB1";
        body2pass.style.backgroundColor = "#E2EBD7";
        body2messeg.style.backgroundColor = "#E2EBD7";
        body2myinform.style.display = "block";
        body2mypass.style.display = "none";
        body2mymesseg.style.display = "none";
    }


    document.querySelectorAll(".varpass").item(0).onchange = function () {
        var yuanShiMiMa = "123";//从后台获取
        if (document.querySelectorAll(".varpass").item(0).value != "") {
            if (document.querySelectorAll(".varpass").item(0).value != yuanShiMiMa) {
                document.querySelector("#tiShi").innerHTML = "密码错误!";
                document.querySelector("#tiShi").style.color = "red";
            }
            else {
                document.querySelector("#tiShi").innerHTML = "";
            }
        }
        else {
            document.querySelector("#tiShi").innerHTML = "密码不能为空!";
            document.querySelector("#tiShi").style.color = "red";
        }
    }

    document.querySelectorAll(".newVarPassword").item(0).onchange = function () {
        if (document.querySelectorAll(".varpass").item(0).value == "") {
            document.querySelector("#tiShi").innerHTML = "密码不能为空!";
            document.querySelector("#tiShi").style.color = "red";
        }
    }

    document.querySelectorAll(".newVarPassword_certain").item(0).onchange = function () {
        if (document.querySelectorAll(".newVarPassword").item(0).value != "") {
            if (document.querySelectorAll(".newVarPassword").item(0).value != document.querySelectorAll(".newVarPassword_certain").item(0).value) {
                document.querySelector("#surepass").getElementsByTagName("span").item(1).innerHTML = "与新密码不匹配！";
                document.querySelector("#surepass").getElementsByTagName("span").item(1).style.color = "red";
            }
            else {
                document.querySelector("#surepass").getElementsByTagName("span").item(1).innerHTML = "";
            }
        }
        else {
            document.querySelector("#surepass").getElementsByTagName("span").item(1).innerHTML = "新密码不能为空！";
            document.querySelector("#surepass").getElementsByTagName("span").item(1).style.color = "red";
        }
    }

    var regm = /^[1]+[0-9]+$/;
    var reg = /^[A-z0-9]+[A-z0-9_-]*\@[A-z0-9]+\.[A-z]+$/;
    var memail = document.querySelectorAll(".memail").item(0);
    var mphonenum = document.querySelectorAll(".mphonenum").item(0);
    memail.onchange = function () {
        if (reg.test(memail.value)) {
            document.querySelector("#myemail").getElementsByTagName("span").item(1).innerHTML = "";
        }
        else {
            document.querySelector("#myemail").getElementsByTagName("span").item(1).innerHTML = "格式不正确！";
            document.querySelector("#myemail").getElementsByTagName("span").item(1).style.color = "red";
        }
    }
    mphonenum.onchange = function () {
        if (mphonenum.value.length == "11") {
            if (regm.test(mphonenum.value)) {
                document.querySelector("#phonenum").getElementsByTagName("span").item(1).innerHTML = "";
            }
            else {
                document.querySelector("#phonenum").getElementsByTagName("span").item(1).innerHTML = "格式不正确！";
                document.querySelector("#phonenum").getElementsByTagName("span").item(1).style.color = "red";
            }
        }
        else {
            document.querySelector("#phonenum").getElementsByTagName("span").item(1).innerHTML = "格式不正确！";
            document.querySelector("#phonenum").getElementsByTagName("span").item(1).style.color = "red";
        }
    }
    //------------------------body4-----------------------------------
    var b4top1 = document.getElementById("b4top1");
    var b4top2 = document.getElementById("b4top2");
    var b4top3 = document.getElementById("b4top3");
    var b4top4 = document.getElementById("b4top4");
    var mydata = document.getElementById("mydata");
    var analysisdata = document.getElementById("analysisdata");
    var historydata = document.getElementById("historydata");
    var surrounddata = document.getElementById("surrounddata");
    b4top1.onclick = function () {
        b4top1.style.backgroundColor = "#E2EBD7";
        b4top2.style.backgroundColor = "#83CBB1";
        b4top3.style.backgroundColor = "#83CBB1";
        b4top4.style.backgroundColor = "#83CBB1";
        mydata.style.display = "block";
        analysisdata.style.display = "none";
        historydata.style.display = "none";
        surrounddata.style.display = "none";
    }
    b4top2.onclick = function () {
        b4top2.style.backgroundColor = "#E2EBD7";
        b4top1.style.backgroundColor = "#83CBB1";
        b4top3.style.backgroundColor = "#83CBB1";
        b4top4.style.backgroundColor = "#83CBB1";
        mydata.style.display = "none";
        analysisdata.style.display = "block";
        historydata.style.display = "none";
        surrounddata.style.display = "none";
    }
    b4top3.onclick = function () {
        b4top1.style.backgroundColor = "#83CBB1";
        b4top2.style.backgroundColor = "#83CBB1";
        b4top3.style.backgroundColor = "#E2EBD7";
        b4top4.style.backgroundColor = "#83CBB1";
        mydata.style.display = "none";
        analysisdata.style.display = "none";
        historydata.style.display = "block";
        surrounddata.style.display = "none";
    }
    b4top4.onclick = function () {
        b4top1.style.backgroundColor = "#83CBB1";
        b4top2.style.backgroundColor = "#83CBB1";
        b4top3.style.backgroundColor = "#83CBB1";
        b4top4.style.backgroundColor = "#E2EBD7";
        mydata.style.display = "none";
        analysisdata.style.display = "none";
        historydata.style.display = "none";
        surrounddata.style.display = "block";
    }
    //-------------------------------------------------------------

</script>

</html>