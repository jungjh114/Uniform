<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입처리</title>
</head>
<body>
	<%
		int res = (Integer) request.getAttribute("res");
		if (res == 1) {
	%>
	<script>
		alert('회원가입이 완료되었습니다.')
		location.href = 'Login';
	</script>
	<%
		} else if (res == 0){
	%>
	<script>
		alert('빈 공란을 둘 수 없습니다.')
		history.go(-1);
	</script>
	<%
		} else if (res == 2){
	%><script>
		alert('패스워드가 다릅니다.')
		history.go(-1);
	</script>
	<%
		} else if (res == 3){
	%><script>
		alert('생년월일을 확인해주세요.')
		history.go(-1);
	</script>
	<%
		} else if (res == 4){
	%><script>
		alert('이미 있는 아이디 입니다.')
		history.go(-1);
	</script>
	<%
		}
	%>



</body>
</html>