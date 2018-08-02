<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지 첫화면</title>
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
		<div class="centering">
			회원정보입니다.<br> <b>★이메일, 연락처, 주소 중 어느 하나가 변경되셨을 경우,<br> 꼭!
				"내 정보 수정하기" 메뉴에서 변경 부탁드립니다. 
		</div>
		<br>
		<div style="width: 600px;">
			<table class="table" align="center">
				<tr height="50">
					<td width="250">&nbsp;회원ID</td>
					<td width="150">&nbsp;${dto.member_Id}</td>
				</tr>
				<tr height="50">
					<td>&nbsp;회원명</td>
					<td>&nbsp;${dto.name}</td>
				</tr>
				<tr height="50">
					<td>&nbsp;이메일 주소</td>
					<td>&nbsp;${dto.email}</td>
				</tr>
				<tr height="50">
					<td>&nbsp;연락처</td>
					<td>&nbsp;${dto.tel}</td>
				</tr>
				<tr height="50">
					<td>&nbsp;물품 받으실 주소<br> <b><font color="lightblue">(★기본으로
								이 주소로 배송됩니다.)</font></b>
					</td>
					<td>&nbsp;${dto.address}</td>
				</tr>
				<tr height="50">
					<td>&nbsp;생년월일</td>
					<td>&nbsp;${dto.birth}</td>
				</tr>
				<tr height="50">
					<td>&nbsp;현재 누적 포인트</td>
					<td>&nbsp;${dto.point}P</td>
				</tr>
			</table>
		</div>
	</center>
</body>
</html>