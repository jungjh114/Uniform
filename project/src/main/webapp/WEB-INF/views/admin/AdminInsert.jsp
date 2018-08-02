<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<h3>상품 등록</h3>
		<br/>
		<div style="width: 400px;">
			<form action="GoodsInsert" method="get">
				<table class="table">
					<tr height="50">
						<td>상품명 :</td>
						<td><input type="text" name="goods_Name"></td>
					</tr>
					<tr height="50">
						<td>상품그룹 :</td>
						<td><select name="goods_Group">
								<option value="월드컵">Worldcup</option>
								<option value="League">League</option>
								<option value="KBO">KBO</option>
						</select></td>
					</tr>
					<tr height="50">
						<td>상품내용 :</td>
						<td><input type="text" name="goods_Contents"></td>
					</tr>
					<tr height="50">
						<td>상품이미지명 :</td>
						<td><input type="text" name="img"></td>
					</tr>
					<tr height="50">
						<td>상품가격 :</td>
						<td><input type="text" name="price"></td>
					</tr>
					<tr height="50">
						<td colspan="2" align="center"><input type="submit"
							value="상품등록" /> <input type="reset" value="다시작성" /></td>
					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>