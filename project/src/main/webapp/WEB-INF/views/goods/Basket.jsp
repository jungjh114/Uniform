<%@page import="java.sql.SQLException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	type="text/css">

<link rel="stylesheet" href="style.css" />
<style>
hr {
	border-top: 2px solid #F12121;
}
</style>
<title>장바구니</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String memid = (String) session.getAttribute("id");
	%>

	<center>
		<div style="width: 80%">
			<font size="6" color="gray"><%=memid%>님의 장바구니</font>
			<table class="table table-striped">
				<tr align="center">
					<td><font size="4">No &nbsp;&nbsp;&nbsp;</font></td>
					<td><font size="4">IMG &nbsp;&nbsp;&nbsp;</font></td>
					<td><font size="4">NAME &nbsp;&nbsp;&nbsp;</font></td>
					<td><font size="4">Quantity &nbsp;&nbsp;&nbsp;</font></td>
					<td><font size="4">Price &nbsp;&nbsp;&nbsp;</font></td>
					<td><font size="4"> &nbsp;&nbsp;&nbsp;</font></td>
					<td><font size="4"></font></td>
				</tr>
				<c:forEach var="dto" items="${list}" varStatus="i">
					<tr height="80">
						<td align="center"><br>${dto.goods_No}</td>
						<td width="10%" align="center"><img alt=""
							src="resources/img/${dto.img}" height="80"></td>
						<td align="center">
							<h3>${dto.goods_Name}</h3>
						</td>
						<td align="center">
							<h3>${dto.qty}</h3>
						</td>
						<td align="center"><h3>${dto.price}</h3></td>

						<td align="center"><br>
							<button
								onclick="location.href='SaleInfo?no=${dto.goods_No}&&qty=${dto.qty}'"
								class="btn btn-primary">Buy</button></td>
						<td align="center"><br>
							<button onclick="location.href='BasketDelete?no=${dto.goods_No}'"
								class="btn btn-primary">Delete</button></td>
					</tr>
				</c:forEach>

				<tr>
					<td colspan="7" align="right">Total Price : <fmt:formatNumber
							pattern="###,###,###" value="${sumPrice}" /></td>
				</tr>
				<tr>


					<td colspan="7" align="center">
						<button onclick="location.href='BasketAllPay'" type="button"
							class="btn btn-primary">All Buy</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button onclick="location.href='Main'" type="button"
							class="btn btn-primary">Main</button>
					</td>

				</tr>

			</table>
		</div>
	</center>
</body>
</html>