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
		<div style="width: 800px;">
			<table class="table table-striped">
				<tr>
					<td colspan="4" align="center"><font color="black" size="3"><strong>입고관리</strong></font></td>
				</tr>
				<tr>
					<th align="center">상품번호</th>
					<th align="center">상품이름</th>
					<th align="center">상품그룹</th>
					<th align="center">재고수량</th>
				</tr>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.goods_No}</td>
						<td><a href="GoodsInput?no=${dto.goods_No}"
							style="text-decoration: none"><font color="black" size="2">${dto.goods_Name}</font></a></td>
						<td>${dto.goods_Group}</td>
						<td>${dto.goods_Qty}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</center>

</body>
</html>