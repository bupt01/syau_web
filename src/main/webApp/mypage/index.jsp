<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>沈阳农业大学种植基地</title>
<link rel="icon" href="./favicon.ico" type="image/x-icon">
<style type="text/css">
	@IMPORT url("${pageContext.request.contextPath}/mypage/index.css");
</style>
</head>
<body>
<!-- 首页 -->
	<div id="page">
		<!-- ------------------------top -------------------------------->
		<div id="top">
			<div id="top_left">
				<img alt="沈阳农业大学" src="${pageContext.request.contextPath}/mypage/images/syaulg.png">
			</div>
			<div id="top_right">
				<img alt="用户" src="${pageContext.request.contextPath}/mypage/images/user2.png">
				<a href="/login" >[用户登录]</a><span></span>
				<%--<a href="login1.jsp" >[老师登录]</a>--%>
			</div>
		</div>
		<div class="clear"></div>
		<!-- -----------------------menu-------------------------------->
		<div id="menu">
			<a href="index.jsp">网站首页</a>
			<a href="#">天柱山风采</a>
			<a href="#">天柱山环境</a>
			<a href="#">发展历史</a>
			<a href="#">蔬菜大棚</a>
			<a href="#">天柱山水果</a>
			<a class="all" href="#">全部信息</a>
		</div>
		
		<!-- ------------------------body------------------------------->
		<div id="body">
			<div id="myimage">
				<ul>
					<li><img src="${pageContext.request.contextPath}/mypage/images/index1.jpg"></li>
					<li><img src="${pageContext.request.contextPath}/mypage/images/index2.jpg"></li>
					<li><img src="${pageContext.request.contextPath}/mypage/images/apple.jpg"></li>
					<li><img src="${pageContext.request.contextPath}/mypage/images/stra2.jpg"></li>
				</ul>
			</div>
			<div id="myinform">
				<div id="inform1">
					<form action="#" method="post">
						<span>Search</span>
						<input type="text" name="name"/>
			    		<input type="image" src="images/serchbutton.gif"/>
					</form>
				</div>
				<div id="inform2">
					<span>沈阳农业大学天柱山</span>
				</div>
			</div>
			<div class="clear"></div>
			<div id="information">
				<div id="information1">
					<ul type="square">
						<li>艳丽草莓是沈阳农业大学培育成功的草莓新品种..</li>
						<li>沈阳农业大学自1954年开始草莓新品种选育研究..</li>
						<li>艳丽草莓已经在中国草莓行业中占有重要的一席..</li>
						<li>辽宁草莓“艳丽”获全国金奖..</li>
						<li>重点开展选育综合日本品种和欧美品种优点的草莓新品种..</li>
						<li>2014年通过辽宁省作物品种备案委员会备案，获得自主知识产权..</li>
					</ul>
				</div>
				<div id="information2">
					<ul type="square">
						<li>沈阳农业大学温室大棚的快速发展..</li>
						<li>沈阳农业大学研制出新型日光温室及育苗技术..</li>
						<li>关于温室大棚的温度、光照强度的采集..</li>
						<li>关于二氧化碳、氧气浓度的检测..</li>
						<li>关于温室大棚自动化控温、喷水的功能..</li>
						<li>关于温室大棚环境因素的分析..</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clear"></div>
		<!--------------------------bottom------------------------------>
		<div id="bottom">
			<div id="bottom_left">
				<img alt="" src="${pageContext.request.contextPath}/mypage/images/syaulg.png">
			</div>
			<div id="bottom_right">
				<span>CONTACT US</span><br/>
				<span>copyright 2018 &copy; SYAU All Rights RESERVED</span>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/mypage/index.js">
</script>
</html>