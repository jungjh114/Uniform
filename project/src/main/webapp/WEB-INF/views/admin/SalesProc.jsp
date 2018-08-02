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
		<h2>${sDate}~${eDate}매출</h2>
		<div style="width: 800px;">
			<table class="table">
				<tr height="50">
					<th>판매번호</th>
					<th>판매코드</th>
					<th>상품번호</th>
					<th>판매수량</th>
					<th>판매가격</th>
					<th>배송주소</th>
					<th>요청사항</th>
				</tr>
				<c:forEach items="${list}" var="dto" varStatus="status">
					<tr height="50">
						<td>${dto.sale_No}</td>
						<td>${dto.sale_Code}</td>
						<td>${dto.goods_No}</td>
						<td>${dto.qty}</td>
						<td>${dto.price}</td>
						<td>${dto.address}</td>
						<td>${dto.claim}</td>

					</tr>
				</c:forEach>
				<tr>
					<td colspan="7" align="center"><h2>
							총 매출 건수 : ${size} 건<br /> 총 매출 금액 : ${sumPrice} 원
						</h2></td>
				</tr>
			</table>
		</div>
	</center>

</body>
</html>