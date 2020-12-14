<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/24 0024
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布公告</title>
    <form method="post" action="${pageContext.request.contextPath}/admin/addpublish.acti" style="">

        <table cellSpacing="1" cellPadding="5" width="100%" align="center"
               bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">

    <textarea
            name="publishDescription" cols="30" rows="3" style="WIDTH: 96%">${product.productDescription}</textarea>


            <tr>
                <td class="ta_01" style="WIDTH: 100%" align="center"
                    bgColor="#f5fafe" colSpan="4"><input type="submit"
                                                         class="button_ok" value="确定"> <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>



                    <input type="reset" value="重置" class="button_cancel"> <FONT
                            face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <INPUT
                            class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
                    <span id="Label1"> </span></td>
            </tr>
        </table>
    </form>
</head>
<body>

</body>
</html>
