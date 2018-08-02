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
			<form action="GoodsUpdateProc" method="get">
				<table class="table">
					<tr height="50">
						<th>상품번호</th>
						<td>${dto.goods_No}</td>
					</tr>
					<tr height="50">
						<th>상품이름</th>
						<td><input type="text" name="goods_Name"
							value="${dto.goods_Name}"></td>
					</tr>
					<tr height="50">
						<th>상품그룹</th>
						<td><select name="goods_Group">
								<option value="월드컵">Worldcup</option>
								<option value="League">League</option>
								<option value="KBO">KBO</option>
						</select></td>
					</tr>
					<tr height="50">
						<th>상품내용</th>
						<td><input type="text" name="goods_Contents"
							value="${dto.goods_Contents}"></td>
					</tr>
					<tr height="50">
						<th>상품이미지</th>
						<td><input type="text" name="img" value="${dto.img}"></td>
					</tr>
					<tr height="50">
						<th>상품가격</th>
						<td><input type="text" name="price" value="${dto.price}"></td>
					</tr>
					<tr height="50">
						<th>재고수량</th>
						<td>${dto.goods_Qty}</td>
					</tr>
					<tr height="50">
						<td colspan="2" align="center"><input type="hidden"
							name="qty" value="${dto.goods_Qty}"> <input type="hidden"
							name="no" value="${dto.goods_No}"> <input type="submit"
							value="수정"></td>
					</tr>
				</table>
			</form>
		</div>
	</center>

</body>
</html>