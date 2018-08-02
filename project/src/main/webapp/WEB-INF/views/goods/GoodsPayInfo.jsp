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
	width: 70%;
}
</style>
<script>
	function mySubmit(index) {
		if (index == 1) {
			document.myForm.action = "SaleInfo";
			document.myForm.submit();
		}
		if (index == 2) {
			document.myForm.action = "BasketProc";
			document.myForm.submit();
		}
	}
</script>
</head>
<body>
	<center>
		<div class="divForm">
			<form name="myForm" method="get">
				<table width="100%" class="table">
					<tr>
						<td rowspan="5" align="center"><img alt=""
							src="resources/img/${dto.img}" width="300"></td>
						<td align="center"><br>
						<h4>Product Name</h4></td>
						<td><br>
						<h4>${dto.goods_Name}</h4></td>

					</tr>
					<tr>
						<td height="30" align="center"><h3>Price</h3></td>
						<td><h3>${dto.price}</h3></td>
					</tr>
					<tr>
						<td height="10" align="center"><h3>Quantity</h3></td>
						<td><br /> <input type="number" name="qty"></td>
					</tr>
					<tr>
						<td height="10" align="center"><h5>Reserves</h5></td>
						<td><h4>2%</h4></td>
					</tr>
					<tr>
						<td colspan="2" width="50%" align="center"><input
							type="hidden" name="no" value="${dto.goods_No}"> <input
							type="hidden" name="price" value="${dto.price}"> <input
							type="hidden" name="img" value="${dto.img}"> <input
							type="button" onclick="mySubmit(1)" value="구매하기"> <input
							type="button" onclick="mySubmit(2)" value="장바구니 담기"></td>
					</tr>
				</table>
			</form>
		</div>
		<hr style="border: solid 2px black; width: 80%;">
	</center>
	<br>
	<br>
	<img src="resources/img/${dto.goods_Contents}" width="600">
</body>

</html>