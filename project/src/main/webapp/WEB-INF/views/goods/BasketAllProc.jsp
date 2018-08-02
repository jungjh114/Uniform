<%@page import="com.project.uniform.dto.Order_Basket"%>
<%@page import="java.util.ArrayList"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
		ArrayList<Order_Basket> list = (ArrayList<Order_Basket>) request.getAttribute("list");
		session.setAttribute("list", list);
	%>

	<center>
		<form action="BasketAllProc" method="get">
			<font size="6"><%=memid%> 님의 결제내역</font>
			<div style="width: 1000px;">
				<table class="table table-boared">
					<tr align="center">
						<td><font size="3">상품 번호</font></td>
						<td><font size="3">상품 이미지</font></td>
						<td><font size="3">상품 이름</font></td>
						<td><font size="3">수량</font></td>
						<td><font size="3">총 금액</font></td>
					</tr>
					<c:forEach var="dto" items="${list}" varStatus="i">
						<tr height="80">
							<td width="180" align="center"><h3>
									<br>${dto.goods_No}</h3></td>
							<td width="700" align="center"><img alt=""
								src="resources/img/${dto.img}" height="80"></td>
							<td align="center">
								<h3>
									<br>${dto.goods_Name}</h3>
							</td>
							<td align="center">
								<h3>
									<br>${dto.qty}</h3>
							</td>
							<td align="center">
								<h3>
									<br>${dto.price}</h3>
							</td>
						</tr>
					</c:forEach>
					<tr height="80">
						<td colspan="2" width="50%" align="right"><h3>배송지 : 
							</h3></td>
						<td colspan="3" align="left">
							<h3>
								${address}</h3>
						</td>
					</tr>
					<tr height="80">
						<td colspan="2" width="50%" align="right">
							<h3>요청사항 : 
							</h3>
						</td>
						<td colspan="3" align="left"><h3>
								${claim}</h3></td>
					</tr>
					<tr>
						<td colspan="5" width="50%" align="right"><h3>
								남은 마일리지 :
								<fmt:formatNumber pattern="###,###,###" value="${point}" />
							</h3></td>
					</tr>
					<tr>
						<td colspan="5" width="50%" align="right"><h3>
								총 금액 :
								<fmt:formatNumber pattern="###,###,###" value="${sumPrice}" />
								￦
							</h3></td>
					</tr>
					<tr>
						<td colspan="5" width="50%" align="center">
							<button type="button" class="btn btn-success"
								onclick="location.href='Main'">메인으로</button>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</center>
</body>
</html>