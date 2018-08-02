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
		String admin = request.getParameter("admin");
		if (admin == null) {
			admin = "Admin.jsp";
		}
	%>
	<table width="80%">
		<tr valign="top">
			<td width="150"><jsp:include page="AdminCategory.jsp" /></td>
			<td><jsp:include page="<%=admin%>" /></td>
		</tr>
	</table>
</body>
</html>