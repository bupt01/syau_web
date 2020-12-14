<%@ page language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/admin/css/Style.css"
          rel="stylesheet" type="text/css"/>
    <script language="javascript"
            src="${pageContext.request.contextPath}/admin/js/public.js"></script>
    <script type="text/javascript">
        function addProduct() {
            window.location.href = "${pageContext.request.contextPath}/admin/products/add.jsp";
        }

        function excel() {
            window.location.href = "/productExcel.action";
        }

        function deleteProduct(productId, productName) {
            if (confirm("是否确认删除") + productName)
                location.href = "${pageContext.request.contextPath}/admin/delete.action/" + productId;
        }


        //全选按钮的实现
        function checkAll() {
            //获取复选框的选中状态
            var flag = document.getElementById("ckAll").checked;
            // alert(flag);
            var ids = document.getElementsByName("ids");//获取循环中的选中状态
            alert(ids[0]);
            for (var i = 0; i < ids.length; i++) {
                ids[i].checked = flag;//使每一个状态和flag状态相同
            }
        }

        //批量删除
        function deleteAll() {
            //获取ids
            var ids = document.getElementsByName("ids");
            // alert(ids[0]);
            //定义一个字符串
            var str = "";
            //遍历
            for (var i = 0; i < ids.length; i++) {
                // alert("aa");
                if (ids[i].checked==true) {
                    /**----------注意这里value的写法-----------------------*/
                    /**----------value里的值应该为商品的id------------------*/
                    str += "ids=" + ids[i].value + "&";//这里是value而不是value()
                }
            }
            //分割字符串
            str = str.substring(0, str.length - 1);
            // alert(str);
            location.href="${pageContext.request.contextPath}/admin/deleteAll.action?"+str;
        }
    </script>
</HEAD>
<body>
<br>
<form id="Form1" name="Form1"
      action="${pageContext.request.contextPath}/admin/list.action"
      method="post">
    <table cellSpacing="1" cellPadding="0" width="100%" align="center"
           bgColor="#f5fafe" border="0">
        <TBODY>
        <tr>
            <td class="ta_01" align="center" bgColor="#ffe4c4"><strong>查
                询 条 件</strong>
            </td>
        </tr>

        <tr>
            <td>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
                    <%--<tr>
                        <td height="22" align="center" bgColor="#f5fafe" class="ta_01">
                            商品编号</td>
                        <td class="ta_01" bgColor="#ffffff"><input type="text"
                            name="id" size="15" value="" id="Form1_userName" class="bg" />
                        </td>
                        <td height="22" align="center" bgColor="#f5fafe" class="ta_01">
                            类别：</td>
                        <td class="ta_01" bgColor="#ffffff"><select name="category"
                            id="category">
                                <option value="" selected="selected">--选择商品类加--</option>
                                <option value="文学">文学</option>
                                <option value="生活">生活</option>
                                <option value="计算机">计算机</option>
                                <option value="外语">外语</option>
                                <option value="经营">经营</option>
                                <option value="励志">励志</option>
                                <option value="社科">社科</option>
                                <option value="学术">学术</option>
                                <option value="少儿">少儿</option>
                                <option value="艺术">艺术</option>
                                <option value="原版">原版</option>
                                <option value="科技">科技</option>
                                <option value="考试">考试</option>
                                <option value="生活百科">生活百科</option>
                        </select></td>
                    </tr>--%>


                    <%--<form action="${pageContext.request.contextPath}/admin/search.actin" method="post">--%>
                    <tr>


                        <td height="22" align="center" bgColor="#f5fafe" class="ta_01">
                            商品编号：
                        </td>
                        <td class="ta_01" bgColor="#ffffff"><input type="text"
                                                                   name="pId" size="15" value="" id="Form1_userName"
                                                                   class="bg"/>
                        </td>


                        <td height="22" align="center" bgColor="#f5fafe" class="ta_01">
                            商品名称：
                        </td>
                        <td class="ta_01" bgColor="#ffffff"><input type="text"
                                                                   name="pName" size="15" value="" id="pName"
                                                                   class="bg"/>
                        </td>
                        <%--<td height="22" align="center" bgColor="#f5fafe" class="ta_01">--%>
                        <%--价格区间(元)：</td>--%>
                        <%--<td class="ta_01" bgColor="#ffffff"><input type="text"--%>
                        <%--name="minprice" size="10" value="" />- <input type="text"--%>
                        <%--name="maxprice" size="10" value="" /></td>--%>
                    </tr>

                    <tr>
                        <td width="100" height="22" align="center" bgColor="#f5fafe"
                            class="ta_01"></td>
                        <td class="ta_01" bgColor="#ffffff"><font face="宋体"
                                                                  color="red"> &nbsp;</font>
                        </td>
                        <td align="right" bgColor="#ffffff" class="ta_01"><br>
                            <br></td>
                        <td align="right" bgColor="#ffffff" class="ta_01">
                            <button type="submit" id="search" name="search"
                                    value="&#26597;&#35810;" class="button_view">
                                &#26597;&#35810;
                            </button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
                                type="reset" name="reset" value="&#37325;&#32622;"
                                class="button_view"/>
                        </td>
                    </tr>
                    <%--</form>--%>
                </table>
            </td>

        </tr>
        <tr>
            <td class="ta_01" align="center" bgColor="#ffe4c4"><strong>商品列表</strong>
            </TD>
        </tr>
        <tr>
            <td class="ta_01" align="right">

                <button type="button" id="delAll" name="delAll" value="批量删除"
                        class="button_add" onclick="deleteAll()">批量删除
                </button>


                <button type="button" id="add" name="add" value="&#28155;&#21152;"
                        class="button_add" onclick="addProduct()">&#28155;&#21152;
                </button>

                <%--<button type="button" id="excel" name="excel"--%>
                <%--class="button_add" onclick="excel()">导出到excel</button>--%>

                <<a href="#" onclick="excel()">导出到excel</a>

            </td>
            <%--<td><a href="#" onclick="excel();">导出到excel</a></td>--%>
        </tr>
        <tr>
            <td class="ta_01" align="center" bgColor="#f5fafe">
                <table cellspacing="0" cellpadding="1" rules="all"
                       bordercolor="gray" border="1" id="DataGrid1"
                       style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
                    <tr
                            style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
                        <td align="center" width="12%"><input type="checkbox" id="ckAll" onclick="checkAll()">全选/全不选
                        </td>

                        <td align="center" width="24%">商品编号</td>
                        <td align="center" width="18%">商品名称</td>
                        <td align="center" width="9%">商品价格</td>
                        <td align="center" width="9%">商品数量</td>
                        <td width="8%" align="center">商品类别</td>
                        <td width="8%" align="center">编辑</td>

                        <td width="8%" align="center">删除</td>
                    </tr>


                    <c:forEach items="${productInfo.productInfoList}" var="p">
                        <tr onmouseover="this.style.backgroundColor = 'white'"
                            onmouseout="this.style.backgroundColor = '#F5FAFE';">
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="23"><input type="checkbox" name="ids" value="${p.productId}"></td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="23">${p.productId}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="18%">${p.productName}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="8%">${p.productPrice}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="8%">${p.productNum}</td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center">${p.productType}</td>
                            <td align="center" style="HEIGHT: 22px" width="7%"><a
                                    href="${pageContext.request.contextPath}/admin/edit.action/${p.productId}">
                                    <%--href="${pageContext.request.contextPath}/admin/products/edit.jsp">--%>
                                <img
                                        src="${pageContext.request.contextPath}/admin/images/i_edit.gif"
                                        border="0" style="CURSOR: hand"> </a>
                            </td>

                            <td align="center" style="HEIGHT: 22px" width="7%"><a
                                <%--href="${pageContext.request.contextPath}/admin/delete.action/${p.productId}">--%>
                                    href="javascript:deleteProduct('${p.productId}','${p.productName}')">
                                <img
                                        src="${pageContext.request.contextPath}/admin/images/i_del.gif"
                                        width="16" height="16" border="0" style="CURSOR: hand">
                            </a>
                            </td>
                        </tr>
                    </c:forEach>


                </table>
            </td>
        </tr>
        </TBODY>
    </table>
</form>
</body>
</HTML>

