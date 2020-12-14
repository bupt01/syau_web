<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>e登录</title>
<link rel="icon" href="./favicon.ico" type="image/x-icon"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/mypage/login1.css"/>
</head>
<body>
	<div id="page">
	<!-- -------------------------top---------------------------- -->
		<div id="top">
			<div id="top_left">
				<img alt="标志" src="${pageContext.request.contextPath}/mypage/images/snlogin.png">

			<div id="top_right">
				<span>沈阳农业大学天柱山农业基地</span>
			</div>
		</div>
		<div class="clear"></div>
		<!-- -----------------------main---------------------------- -->
		<div id="main">
			<div id="main_title">
				<span>管理员登录</span>
				<hr/>
			</div>
			<div id="main_body">
				<form action="/login1.action" method="post">
					<div class="login_user mylogin_user" >
						<i class="icon_user"></i>
						<input type="text" name="userName" placeholder="用户名" class="user user1"/><span style="color: #cc0000">${error}</span>
					</div>
					<div class="login_user mylogin_pass">
						<i class="icon_pass"></i>
						<input type="password" name="password" placeholder="密码"class="user user2" /><span style="color: #ac2925">${msg}</span>
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
<script type="text/javascript">
    var mylogin_user=document.querySelector(".mylogin_user").getElementsByTagName("span").item(0);
    if(mylogin_user.innerHTML=="输入的类型不正确")
	{
        document.querySelector(".user1").style.borderColor="red";
        document.querySelector(".user2").style.borderColor="red"
        mylogin_user.innerHTML="";
	}
    var mylogin_pass=document.querySelector(".mylogin_pass").getElementsByTagName("span").item(0);
    if(mylogin_pass.innerHTML=="用户名或密码错误！")
	{
        document.querySelector(".user2").style.borderColor="red";
        document.querySelector(".user1").style.borderColor="red";
        mylogin_pass.innerHTML="";
	}
</script>
</html>