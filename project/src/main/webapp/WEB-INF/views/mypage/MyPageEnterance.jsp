<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호확인</title>
<style>
.centering {
	text-align: center;
}
</style>
</head>
<body>
	<center>
		<form action="MyPageMain">
			<table>
				<tr height="150">
					<th colspan="2" align="center"><font color="red">마이페이지
							입장 전, 개인정보 유출을 막기 위해 본인 확인을 진행합니다.<br> 현재 사용 중이신 비밀번호를 한 번 더
							입력해 주시기 바랍니다.
					</font></th>
				</tr>
				<tr height="50">
					<th align="right">패스워드</th>
					<td align="center"><input type="password" name="password"
						size="32"></td>
				</tr>
				<tr height="50">
					<td colspan="2" align="center"><input type="submit" value="확인"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>