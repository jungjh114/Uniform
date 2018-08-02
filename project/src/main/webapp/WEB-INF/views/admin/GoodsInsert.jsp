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
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		int res = (Integer)request.getAttribute("res");
		if (res == 1) {
	%>
	<script>
		alert('상품 등록이 완료되었습니다.');
		location.href = 'AdminInsert';
	</script>
	<%
		} else {
	%>
	<script>
		alert('빈 공란을 둘 수 없습니다.')
		history.go(-1);
	</script>
	<%
		}
	%>
</body>
</html>