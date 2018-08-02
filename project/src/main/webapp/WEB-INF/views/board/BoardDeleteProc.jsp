<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>삭제 처리 루틴</title>
</head>
<body>
	<%
		int res = (Integer) request.getAttribute("res");
		if (res == 1) {
			int backPage = Integer.parseInt(session.getAttribute("currentPage") + "");
			int backBlock = Integer.parseInt(session.getAttribute("currentBlock") + "");
			response.sendRedirect("BoardList?pageNum=" + backPage + "&pageBlock=" + backBlock + "");
	%>
	<script>
		alert("삭제 되었습니다.")
		location.href='BoardList?pageNum=<%=backPage%>&pageBlock=<%=backBlock%>';
	</script>

	<%
		} else {
			out.print("안지운다.");
		}
	%>


</body>
</html>