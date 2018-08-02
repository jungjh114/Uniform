<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>왼쪽에 들어갈 메뉴</title>
</head>
<body>
	<%
		String password = (String) session.getAttribute("password");
	%>
	<table bgcolor="#E0F8F7" width="150">
		<tr height="50">
			<td width="150" align="center"><a
				href="MyPageMain?password=<%=password%>" style="text-decoration: none">
					<font color="black" size="3"><strong>마이페이지</strong></font>
			</a></td>
		</tr>
		<tr height="50">
			<td width="150" align="center"><a href="MyInfoModify"
				style="text-decoration: none"> <font color="black" size="3"><strong>내
							정보 수정하기</strong></font></a></td>
		</tr>
		<tr height="50">
			<td align="center"><a href="PasswordChange"
				style="text-decoration: none"> <font color="black" size="3"><strong>비밀번호
							변경</strong></font></a></td>
		</tr>
		<!-- 주문내역은 나중에! -->
		<tr height="50">
			<td align="center"><a href="MyOrderMain"
				style="text-decoration: none"> <font color="black" size="3"><strong>주문내역</strong></font></a></td>
		</tr>
		<tr height="50">
			<td align="center"><a href="DropOutConfirm"
				style="text-decoration: none"> <font color="black" size="3"><strong>회원탈퇴</strong></font></a></td>
		</tr>
	</table>
</body>
</html>