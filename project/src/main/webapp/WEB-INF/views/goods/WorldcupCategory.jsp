<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	type="text/css">
<style>
hr {
	border-top: 2px solid red;
}
</style>
</head>
<body>
	<center>
		<br />
		<table bgcolor="#F2F2F2" width="80%">
			<tr>
				<td align="center"><a href="WorldcupAllList"
					style="text-decoration: none"><font color="black" size="2"><strong>전체</strong></font></a></td>
				<c:forEach items="${listGroup}" var="group" varStatus="status">
					<td align="center"><a
						href="WorldcupCategory?group=${group.goods_Group}"
						style="text-decoration: none"> <font color="black" size="3"><strong>${group.goods_Group}</strong></font></a></td>
				</c:forEach>
			</tr>
		</table>
		<br />
		<table>
			<tr>
				<td align="center" colspan="3"><font size="6" color="gray">조별
						상품 보기(${currentPage}/${pageCount})</font></td>
			</tr>
			<c:forEach items="${list}" var="dto" varStatus="status">
				<c:if test="${status.index % 3 == 0}">
					<tr height="220">
				</c:if>
				<td width="400" align="center"><a
					href="GoodsPayInfo?no=${dto.goods_No}"> <img alt=""
						src="resources/img/${dto.img}" width="300" height="200">
				</a> <br /> <font size="3" color="gray"><b>${dto.goods_Name}</b>
						<br /> <b>${dto.price} 원</b></font></td>
				<c:if
					test="${status.index % 3 == 2 || status.index == (rowCount -1)}">
					</tr>
					<tr>
						<td colspan="3"><hr>
							<br /></td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<p>${pagenation}
	</center>
</body>
</html>