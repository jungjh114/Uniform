<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<style>
.divForm {
	width: 700px;
}

hr {
	border-top: 2px solid red;
}
</style>
</head>
<body>

	<center>
		<div class="divForm">
			<form action="LoginProc" method="post">
				<table class="table table-boared">
					<tr height="100">
						<td align="center" colspan="2"><img
							src="resources/img/member/Home.jpg" width="80" height="80"></td>
					</tr>

					<tr height="60">
						<td width="120" align="center"><img
							src="resources/img/member/Login.png" width="30" height="30">USERNAME</td>
						<td width="180"><input type="text" name="id"></td>
					</tr>
					<tr height="60">
						<td align="center"><img
							src="resources/img/member/Password.png" width="30" height="30">PASSWORD</td>
						<td><input type="password" name="pass"></td>
					</tr>
					<tr height="40" align="center">
						<td colspan="2">
							<div style="width: 300px;">
								<input type="submit" class="btn btn-primary btn-lg btn-block"
									value="Login">
								<button type="button" class="btn btn-secondary btn-lg btn-block"
									onclick="location.href='MemberJoin'">join</button>
							</div>
						</td>

					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>