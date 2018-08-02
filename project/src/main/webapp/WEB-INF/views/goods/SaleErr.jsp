<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int res = (Integer) request.getAttribute("res");
		if (res == 1) {
	%>
	<script>
		alert('로그인부터 하셔야 합니다.');
		location.href = 'Login';
	</script>
	<%
		} else if (res == 2) {
	%>
	<script>
		alert('수량을 정해주세요.');
		history.go(-1);
	</script>
	<%
		} else if (res == 3) {
	%>
	<script>
		alert('수량이 맞지 않습니다.');
		history.go(-1);
	</script>
	<%
		} else if (res == 4) {
	%>
	<script>
		alert('마일리지를 확인해주시기 바랍니다.');
		history.go(-1);
	</script>
	<%
		} else if (res == 5) {
	%>
	<script>
		alert('장바구니가 비어있습니다.');
		history.go(-1);
	</script>
	<%
		} else if (res == 6) {
	%>
	<script>
		alert('사용 마일리지가 구매금액보다 많습니다.');
		history.go(-1);
	</script>
	<%
		}
	%>
</body>
</html>