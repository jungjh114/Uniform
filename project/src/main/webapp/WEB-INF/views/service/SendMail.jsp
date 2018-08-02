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
		alert('접수완료.');
		location.href = 'ServiceMain';
	</script>
	<%
		} else {
	%>
	<script>
		alert('전송에 실패하였습니다.');
		history.back();
	</script>
	<%
		}
	%>
</body>
</html>
