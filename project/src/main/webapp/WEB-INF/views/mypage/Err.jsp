<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body><%
		int res = (Integer) request.getAttribute("res");
		if (res == 0) {
	%>
	<script>
		alert('로그인부터 하셔야 합니다.');
		location.href = 'Login';
	</script>
	<%
		} else if (res == 1) {
	%>
	<script>
		alert('비밀번호를 확인해주세요.');
		history.go(-1);
	</script>
	<%
		}
	%>
</body>
</html>