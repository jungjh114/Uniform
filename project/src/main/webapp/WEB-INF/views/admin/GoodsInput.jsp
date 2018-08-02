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
		<div style="width: 400px;">
			<form action="GoodsInputProc" method="get">
				<table class="table">
					<tr height="50">
						<td colspan="2" align="center"><font color="black" size="3"><strong>입고관리</strong></font></td>
					</tr>
					<tr height="50">
						<th align="center">상품번호</th>
						<td align="center">${dto.goods_No}</td>
					</tr>
					<tr height="50">
						<th align="center">상품이름</th>
						<td align="center">${dto.goods_Name}</td>
					</tr>
					<tr height="50">
						<th align="center">상품그룹</th>
						<td align="center">${dto.goods_Group}</td>
					</tr>
					<tr height="50">
						<th align="center">입고수량</th>
						<td align="center"><input type="text" name="input_Qty"></td>
					</tr>
					<tr height="50">
						<th align="center">지출금액</th>
						<td align="center"><input type="text" name="input_Price"></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="hidden" name="no"
							value="${dto.goods_No}"> <input type="submit" value="저장" /></td>
					</tr>
				</table>
			</form>
		</div>
	</center>

</body>
</html>