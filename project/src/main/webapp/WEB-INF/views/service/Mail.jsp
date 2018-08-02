<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
		<h1>1:1 문의</h1>
		<br />
		<div style="width: 60%;">
			<form action="SendMail" method="post">
				<div class="form-group" align="left">
					<label>작성자 성함</label> <input type="text" class="form-control"
						name="name" placeholder="성함을 입력해주세요.">
				</div>
				<div class="form-group" align="left">
					<label>답장받을 Email</label> <input type="text" class="form-control"
						name="from" placeholder="고객님의 Email을 입력해주세요.">
				</div>
				<div class="form-group" align="left">
					<label>내용</label>
					<textarea class="form-control" name="content" rows="10"
						placeholder="내용을 입력해주세요."></textarea>
				</div>
				<input type="submit" class="btn btn-primary" value="Submit">
				&nbsp;&nbsp; <input type="reset" value="Reset"
					class="btn btn-primary"> &nbsp;&nbsp;
			</form>
		</div>

	</center>






















	<!-- <center>
		<div style="width: 800px;">
			<h1>메일 문의하기</h1>
			<form id="form" name="join" class="topBefore" action="SendMail"
				method="post">
				<table class="table">
					<tr height="50">
						<td align="center" width="150">작성자</td>
						<td><input id="name" type="text" placeholder="작성자 이름"></td>
					</tr>

					<tr height='50'>
						<td align='center'>이메일</td>
						<td align='left'><input type='text' name="email1" size='20'>
							@ <input type="text" name="email2" value="" disabled> <select
							name="email" onchange="email_change()">
								<option value="0" selected="selected">선택하세요</option>
								<option value="DirectInput">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="nate.com">nate.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="vision.com">vision.com</option>
						</select></td>


					</tr>


					<tr height="50">
						<td align="center">내용</td>
						<td><textarea name="content" class="subject" placeholder="내용"></textarea></td>
					</tr>
					<tr>
						<td colspan="2" align="left"><input class="submit"
							type="submit" value="접수"></td>
					</tr>
				</table>
			</form>
		</div>
	</center> -->
</body>
</html>