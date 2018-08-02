<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"
	type="text/css">
<style>
hr {
	border-top: 2px solid red;
}

.divForm {
	width: 1200px;
}
</style>
</head>
<body>
	<center>
		<div class="divForm">
			<form action="SaleReserve" method="get">
				<table width="100%" class="table">
					<tr height="30">
						<td colspan="3" align="center"><h2>구매정보</h2></td>
					</tr>
					<tr>
						<td rowspan="8" width="50%" align="center"><img alt=""
							src="resources/img/${dto.img}" width="300"></td>
						<td align="center"><h3>ProductName</h3></td>
						<td><h3>${dto.goods_Name}</h3></td>
					</tr>
					<tr>
						<td align="center"><h3>Quantity</h3></td>
						<td><h3>${qty}</h3></td>
					</tr>
					<tr>
						<td align="center"><h3>Total</h3></td>
						<td><h3>${fee}</h3></td>
					</tr>
					<tr>
						<td align="center"><h3>보유 마일리지</h3></td>
						<td><h3>${memberDto.point}</h3></td>
					</tr>
					<tr>
						<td align="center"><h3>사용할 마일리지</h3></td>
						<td><br><input type="text" name="usePoint" value="0"></td>
					</tr>
					<tr>
						<td width="25%" align='center'><h3>Address</h3></td>
						<td width="25%"><br> <input type="text" name="address"
							value="${address}"></td>
					</tr>
					<tr>
						<td width="25%" align="center"><h3>요청사항</h3></td>
						<td width="25%"><br><input type="text" name="claim"></td>
					</tr>

					<tr>
						<td colspan="2" width="50%" align="center"><input
							type="hidden" name="no" value="${dto.goods_No}"> <input
							type="hidden" name="price" value="${dto.price}"> <input
							type="hidden" name="img" value="${dto.img}"> <input
							type="hidden" name="qty" value="${qty}"> <input
							type="submit" value="구매 확정"> <input type="button"
							onclick="location.href='Main'" value="메인으로"></td>
					</tr>
				</table>
			</form>
		</div>
		<hr style="border: solid 2px black; width: 80%;">

		<p>
	</center>
</body>
</html>