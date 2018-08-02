<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품리스트</title>
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
		
		<br />
		<table>
			<tr>
				<td align="center" colspan="3"><font size="6" color="gray">전체
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
						<td colspan="3"><hr> <br /></td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<p>${pagenation}
	</center>
</body>
</html>