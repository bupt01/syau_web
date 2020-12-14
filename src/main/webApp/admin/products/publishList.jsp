<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/27 0027
  Time: 8:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
这是展示公告详情的界面

<table>
    <c:forEach items="${publishList}" var="p">
    <tr>
        <td>${p.publishContent}</td>
    </tr>
    </c:forEach>
</table>


<table cellspacing="0" cellpadding="1" rules="all"
       bordercolor="gray" border="1" id="DataGrid1"
       style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
    <tr
            style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
        <td align="center" width="24%">商品编号</td>
        <td align="center" width="18%">商品名称</td>
        <td align="center" width="9%">商品价格</td>
        <td align="center" width="9%">商品数量</td>
        <td width="8%" align="center">商品类别</td>
        <td width="8%" align="center">编辑</td>

        <td width="8%" align="center">删除</td>
    </tr>


    <%--<c:forEach items="${productInfo}" var="p">--%>
    <tr onmouseover="this.style.backgroundColor = 'white'"
        onmouseout="this.style.backgroundColor = '#F5FAFE';">
        <td style="CURSOR: hand; HEIGHT: 22px" align="center"
            width="23">你好</td>
        <td style="CURSOR: hand; HEIGHT: 22px" align="center"
            width="18%">我好</td>
        <td style="CURSOR: hand; HEIGHT: 22px" align="center"
            width="8%">淡</td>
        <td style="CURSOR: hand; HEIGHT: 22px" align="center"
            width="8%">魂</td>
        <td style="CURSOR: hand; HEIGHT: 22px" align="center">you</td>
        <td align="center" style="HEIGHT: 22px" width="7%"><a
                href="${pageContext.request.contextPath}/admin/edit.action/${p.productId}">
                <%--href="${pageContext.request.contextPath}/admin/products/edit.jsp">--%>
            <img
                    src="${pageContext.request.contextPath}/admin/images/i_edit.gif"
                    border="0" style="CURSOR: hand"> </a>
        </td>

        <td align="center" style="HEIGHT: 22px" width="7%"><a
            <%--href="${pageContext.request.contextPath}/admin/delete.action/${p.productId}">--%>
                href="javascript:deleteProduct('','')">
            <img
                    src="${pageContext.request.contextPath}/admin/images/i_del.gif"
                    width="16" height="16" border="0" style="CURSOR: hand">
        </a>
        </td>
    </tr>
    <%--</c:forEach>--%>

</body>
</html>
