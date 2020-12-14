<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/26 0026
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/" method="post">
   学号： <input type="text" name="number">
    密码：<input type="password" name="password">
    <<input type="submit" name="commit" value="登录">

    <span style="color: #cc0000">${error}</span>
</form>
</body>
</html>
