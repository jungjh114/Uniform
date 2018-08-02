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
		<h3>상품 삭제</h3>
		<br />
		<div style="width: 1100px;">
			<table class="table table-striped">
				<tr>
					<td colspan="8" align="right">
						<form action="DeleteSearch" method="get">
							<input type="text" name="search"> &nbsp; <input
								type="submit" value="검색">
						</form>
					</td>
				</tr>
				<tr>
					<th>상품번호</th>
					<th>상품이름</th>
					<th>상품그룹</th>
					<th>상품내용</th>
					<th>상품이미지</th>
					<th>상품가격</th>
					<th>재고수량</th>
					<th></th>
				</tr>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.goods_No}</td>
						<td><font color="black" size="2">${dto.goods_Name}</font></td>
						<td>${dto.goods_Group}</td>
						<td>${dto.goods_Contents}</td>
						<td>${dto.img}</td>
						<td align="center">${dto.price}</td>
						<td align="center">${dto.goods_Qty}</td>
						<td><a href="GoodsDelete?no=${dto.goods_No}"><button>
									<font color="black" size="2">삭제</font>
								</button></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</center>

</body>
</html>