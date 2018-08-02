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

.centering {
	text-align: center;
}
</style>
</head>
<body>
	<center>
		<h3>회원 탈퇴</h3>
		<div class="centering">
			실수로 탈퇴하는 것을 막기 위해, 마지막으로 한번 더 탈퇴확인을 진행합니다.<br> 비밀번호를 한 번 더
			입력하시고, 정말 탈퇴하고 싶으시다면 탈퇴코드 "BYE"를 입력해 주세요.<br> <br>
		</div>
		<form action="DeleteProc">
			<div style="width: 600px">
				<table class="table" align="center">
					<tr height="50">
						<td>비밀번호 입력</td>
						<td><input type="password" name="password" required></td>
					</tr>
					<tr height="50">
						<td>탈퇴코드 입력</td>
						<td><input type="text" name="code" required></td>
					</tr>
					<tr height="50">
						<td colspan="2" align="center"><input
							type="submit" name="dropTheClient" value="회원탈퇴"></td>
					</tr>
				</table>
			</div>
		</form>
	</center>
</body>
</html>