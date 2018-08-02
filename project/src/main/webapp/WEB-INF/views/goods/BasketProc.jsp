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
		alert('장바구니에 등록되었습니다.');
		location.href = 'Basket';
	</script>
	<%
		} else {
	%>
	<script>
		alert('수량을 입력하셔야 합니다.');
		history.go(-1);
	</script>
	<%
		}
	%>
</body>
</html>