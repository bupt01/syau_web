<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>e登录</title>
<link rel="icon" href="./favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WEB-INF/myjsp/login1.css"/>
</head>
<body>
	<div id="page">
	<!-- -------------------------top---------------------------- -->
		<div id="top">
			<div id="top_left">
				<img alt="标志" src="${pageContext.request.contextPath}/WEB-INF/myjsp/images/snlogin.png">
			</div>
			<div id="top_right">
				<span>沈阳农业大学天柱山农业基地</span>
			</div>
		</div>
		<div class="clear"></div>
		<!-- -----------------------main---------------------------- -->
		<div id="main">
			<div id="main_title">
				<span>用户登录</span>
				<hr/>
			</div>
			<div id="main_body">
				<form action="student.jsp" method="post">
					<div class="login_user">
						<i class="icon_user"></i>
						<input type="text" name="username" placeholder="用户名" class="user"/><span></span>
					</div>
					<div class="login_user">
						<i class="icon_pass"></i>
						<input type="password" name="password" placeholder="密码"class="user" /><span></span>
					</div>
					<div class="login_submit">
						<input type="submit" value="登     录" class="submit"/>
					</div>
				</form>
			</div>
		</div>
		<!-- -------------------------bottom---------------------------->
		<div id="bottom">
			<span>版权所有：沈阳农业大学</span>
		</div>
	</div>
</body>
</html>