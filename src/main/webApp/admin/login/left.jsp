<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/admin/css/left.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"></td>
  </tr>
</table>
<table width="100%" border="0">
  <tr>
    <td>
<div class="dtree">

	<a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>
	<link rel="StyleSheet" href="${pageContext.request.contextPath}/admin/css/dtree.css" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/dtree.js"></script>
	<script type="text/javascript">
		<!--
		d = new dTree('d');
		d.add(0,-1,'系统菜单树');
		d.add(1,0,'商品管理','${pageContext.request.contextPath}/admin/login/welcome.jsp','','mainFrame');
		d.add(2,0,'信息管理','${pageContext.request.contextPath}/admin/login/welcome.jsp','','mainFrame');
		d.add(3,0,'大棚检测','${pageContext.request.contextPath}/admin/login/welcome.jsp','','mainFrame');

		
		//子目录添加
		<%--d.add(11,1,'商品查看','${pageContext.request.contextPath}/admin/products/list.jsp','','mainFrame');--%>
		d.add(11,1,'商品查看','${pageContext.request.contextPath}/admin/list.action','','mainFrame');

		d.add(12,2,'发布公告','${pageContext.request.contextPath}/admin/products/publish.jsp','','mainFrame');
		//todo
		d.add(13,2,'查看公告','${pageContext.request.contextPath}','','mainFrame');
		<%--d.add(13,2,'','${pageContext.request.contextPath}/admin/products/publish.jsp','','mainFrame');--%>


		d.add(13,3,'查看详情','${pageContext.request.contextPath}/admin/products/publish.jsp','','mainFrame');
		d.add(14,3,'信息统计','${pageContext.request.contextPath}/admin/products/publish.jsp','','mainFrame');




		
		document.write(d);
		//-->
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
