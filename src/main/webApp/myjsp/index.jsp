<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>沈阳农业大学种植基地</title>
<link rel="icon" href="${pageContext.request.contextPath}/myjsp/favicon.ico" type="image/x-icon">
<style type="text/css">
	@IMPORT url("${pageContext.request.contextPath}/myjsp/index.css");
</style>
</head>
<body>
<!-- 首页 -->
	<div id="page">
		<!-- ------------------------top -------------------------------->
		<div id="top">
			<div id="top_left">
				<img alt="沈阳农业大学" src="${pageContext.request.contextPath}/myjsp/images/syaulg.png">
			</div>
			<div id="top_right">
				<img alt="用户" src="${pageContext.request.contextPath}/myjsp/images/user2.png">
				<a href="${pageContext.request.contextPath}/myjsp/login1.jsp" target="_blank">[学生登录]</a><span> |</span>
				<a href="${pageContext.request.contextPath}/myjsp/login1.jsp" target="_blank">[老师登录]</a>
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
			<a href="${pageContext.request.contextPath}/productList.action?page=0&size=4">天柱山水果</a>
			<a class="all" href="#">全部信息</a>
		</div>
		
		<!-- ------------------------body------------------------------->
		<div id="body">
			<div id="myimage">
				<ul>
					<li><img src="${pageContext.request.contextPath}/myjsp/images/va1.jpg"></li>
					<li><img src="${pageContext.request.contextPath}/myjsp/images/va2.jpg"></li>
					<li><img src="${pageContext.request.contextPath}/myjsp/images/toma2.jpg"></li>
					<li><img src="${pageContext.request.contextPath}/myjsp/images/stra1.jpg"></li>
				</ul>
			</div>
			<div id="myinform">
				<div id="inform1">
					<form action="#" method="post">
						<span>Search</span>
						<input type="text" name="name"/>
			    		<input type="image" src="${pageContext.request.contextPath}/myjsp/images/serchbutton.gif"/>
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
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
					</ul>
				</div>
				<div id="information2">
					<ul type="square">
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
						<li>xxxxxxxxxxxxxxxxxxxxxxxxxxx</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clear"></div>
		<!--------------------------bottom------------------------------>
		<div id="bottom">
			<div id="bottom_left">
				<img alt="" src="${pageContext.request.contextPath}/myjsp/images/syaulg.png">
			</div>
			<div id="bottom_right">
				<span>CONTACT US</span><br/>
				<span>copyright 2018 &copy; SYAU All Rights RESERVED</span>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/myjsp/index.js">
</script>
</html>