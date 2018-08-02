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
		<h2>${sDate}~${eDate}지출</h2>
		<div style="width: 500px;">
			<table class="table">
				<tr height="50">
					<th>지출순서</th>
					<th>상품번호</th>
					<th>상품수량</th>
					<th>지출금액</th>
				</tr>
				<c:forEach items="${list}" var="dto" varStatus="status">
					<tr height="50">
						<td>${dto.input_No}</td>
						<td>${dto.goods_No}</td>
						<td>${dto.input_Qty}</td>
						<td>${dto.input_Price}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="4" align="center"><h2>
							총 지출 건수 : ${size} 건<br /> 총 지출 금액 : ${sumPrice} 원
						</h2></td>
				</tr>
			</table>
		</div>
	</center>

</body>
</html>