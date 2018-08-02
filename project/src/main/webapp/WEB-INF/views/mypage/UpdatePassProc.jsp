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
		int res = (Integer) request.getAttribute("res");
		if(res == 1){
	%>
	<script>
		alert('비밀번호 변경이 완료되었습니다. 변경된 비밀번호로 다시 로그인 해주세요.');
		<% 
			session.setAttribute("id", null);
		%>
		location.href = 'Main';
	</script>
	<%
		} else {
	%>
	<script>
		alert('비밀번호가 다릅니다. 다시 변경해주세요.')
		history.go(-1);
	</script>
	<%
		}
	%>
</body>
</html>