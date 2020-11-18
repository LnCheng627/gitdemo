<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询商品列表</title>
</head>
<body> 
<%--<form action="${pageContext.request.contextPath }/item/queryitem.action" method="post">--%>
<%--查询条件：
<table width="100%" border=1>
<tr>
	<td>商品名称：<input type="text" name="product.name"></td>
	<td>商品价格：<input type="text" name="product.price"></td>
	<td>姓名：<input type="text" name="user.username"></td>
	<td>性别：<input type="text" name="user.sex"></td>
<td><input type="submit" value="查询"/></td>
</tr>
</table>--%>
	<h3>欢迎${user.xingming}!</h3>
	${message}
<form action="${pageContext.request.contextPath }/product/findproduct" method="post">
	商品名称<input type="text" name="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品价格<input type="text" name="price">&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="搜索">
</form>
    <form action="${pageContext.request.contextPath }/product/deleteAll" method="post">
        <table width="100%" border=1>
            <tr>
                <td><input type="submit" value="批量删除"/></td>
				<td><a href="${pageContext.request.contextPath }/product/updateAll"><input type="button" value="批量修改"></a></td>
            </tr>
        </table>-
商品列表：
<table width="100%" border=1>
<tr>
    <td></td>
	<td>商品图片</td>
	<td>商品名称</td>
	<td>商品价格</td>
	<td>生产日期</td>
	<td>商品描述</td>
	<td>操作</td>
</tr>
<c:forEach items="${productList }" var="item">
<tr>
    <td><input type="checkbox" name="ids" value="${item.id }"></td>
	<td><img src="/pic/${item.imgpath}" width=100 height=100/></td>
	<td>${item.name }</td>
	<td>${item.price }</td>
	<td><fmt:formatDate value="${item.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	<td>${item.detail }</td>
	
	<td><a href="${pageContext.request.contextPath }/product/getProduct?id=${item.id}">修改</a></td>

</tr>
</c:forEach>

</table>
</form>
</body>

</html>