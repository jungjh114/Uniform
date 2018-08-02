<%@page import="com.project.uniform.dto.Member"%>
<%@page import="com.project.uniform.dto.SaleReserve"%>
<%@page import="com.project.uniform.dto.SaleInfo"%>
<%@page import="com.project.uniform.dto.Save_Goods"%>
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
			<form name="myForm" method="get">
				<table width="100%" class="table table-hover">
					<tr>
						<td colspan="3" align="center">구매해주셔서 감사합니다.</td>
					</tr>
					<tr height="70">
						<td colspan="3" align="center">구매 정보</td>
					</tr>
					<tr>
						<td rowspan="8" width="50%" align="center"><img alt=""
							src="resources/img/${dto.img}" width="300"></td>
						<td width="25%" align="center"><h3>유니폼 이름</h3></td>
						<td width="25%"><h3>${dto.goods_Name}</h3></td>
					</tr>
					<tr>
						<td width="25%" align="center"><h3>수량</h3></td>
						<td width="25%"><h3>${qty}</h3></td>
					</tr>
					<tr>
						<td width="25%" align="center"><h3>구매 금액</h3></td>
						<td width="25%"><h3>${fee}</h3></td>
					</tr>
					<tr>
						<td width="25%" align="center"><h3>사용한 마일리지</h3></td>
						<td width="25%"><h3>${usePoint}</h3></td>
					</tr>
					<tr>
						<td width="25%" align="center"><h3>총 결제금액</h3></td>
						<td width="25%"><h3>${lastFee}</h3></td>
					</tr>

					<tr>
						<td width="25%" align='center'><h3>배송지</h3></td>
						<td width="25%"><h3>${address}</h3></td>
					</tr>
					<tr>
						<td width="25%" align="center"><h3>요청사항</h3></td>
						<td width="25%"><h3>${claim}</h3></td>
					</tr>

					<tr>

						<td colspan="2" width="50%" align="center">
							<button type="button" onclick="location.href='Main'">메인으로</button>
							<button type="button" onclick="location.href='Basket'">나의
								장바구니</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<hr style="border: solid 2px black; width: 80%;">

		<p>
	</center>
</body>
</html>