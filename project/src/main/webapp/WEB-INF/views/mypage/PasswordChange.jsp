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
		<h3>비밀번호 변경</h3>
		<br/>
		<form action="UpdatePassProc">
			<div style="width: 600px;">
				<table class="table" align="center">
					<tr height="50">
						<td width="200">변경할 비밀번호 입력</td>
						<td><input type="password" name="password1" size="32" required></td>
					</tr>
					<tr height="50">
						<td>비밀번호 재확인</td>
						<td><input type="password" name="password2" size="32" required></td>
					</tr>
					<tr height="50">
						<td colspan="2" align="center"><input type="submit"
							value="정보 수정"> <input type="reset" value="다시 작성"></td>
					</tr>
				</table>
			</div>
		</form>
	</center>
</body>
</html>